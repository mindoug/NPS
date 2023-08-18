//
//  NetworkUtilities.swift
//  NPS
//
//  Created by Mindy Douglas on 6/4/23.
//

import Foundation
import UIKit

// download image from internet based on URL

struct NetworkUtilities {
    
    static func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    static func downloadImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
        // looks for already cached image and if it exists returns it
        if let cachedImage = ImageCache.shared.cache.object(forKey: url.absoluteString as NSString) {
            completion(cachedImage)
        } else {
            NetworkUtilities.getData(from: url) { data, response, error in
                guard let data = data, error == nil else { return }
                print(response?.suggestedFilename ?? url.lastPathComponent)
             
                if let downloadedImage = UIImage(data: data) {
                    // adds to cache
                    ImageCache.shared.cache.setObject(downloadedImage, forKey: url.absoluteString as NSString)
                    completion(downloadedImage)
                }
            }
        }
    }
}
