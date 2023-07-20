//
//  NPSController.swift
//  NPS
//
//  Created by Mindy Douglas on 6/4/23.
//

import Foundation

struct NPSModelController {
    
    static func getParksByState(state: String, completion: @escaping (Result<[NPSPark], Error>) -> Void) {
        let query = ["stateCode": state, "api_key": Constants.apiKey]
        
        var urlComponents = URLComponents(string: "\(Constants.baseURL)\(Constants.parksURL)")!
        urlComponents.queryItems = query.map({ URLQueryItem(name: $0.key, value: $0.value) })
        
        let task = URLSession.shared.dataTask(with: urlComponents.url!) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let searchResponse = try decoder.decode(NPSParkWrapper.self, from: data)
                    completion(.success(searchResponse.data))
                } catch let DecodingError.dataCorrupted(context) {
                    print(context)
                } catch let DecodingError.keyNotFound(key, context) {
                    print("Key '\(key)' not found:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch let DecodingError.valueNotFound(value, context) {
                    print("Value '\(value)' not found:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch let DecodingError.typeMismatch(type, context)  {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    print("error: ", error.localizedDescription)
                    completion(.failure(error))
                }
            }
        }
        
        task.resume()
    }
    
}
