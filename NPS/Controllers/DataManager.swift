//
//  DataModel.swift
//  NPS
//
//  Created by Mindy Douglas on 6/3/23.
//

import Foundation

// need to use a class because structs are immutable

class DataManager: Codable {
    
    var favorites: [Park] = [] {
        // property observer
        didSet {
            saveToFile()
//            print("favorites changed")
        }
    }
    
    var items: [ListItem] = [] {
        // property observer
        didSet {
            saveToFile()
        }
    }
    
    // when this shared property is accessed you will always get the same instance of this class (Singleton Pattern)
    
    static let shared = DataManager()
    
    // the only way to initialize is to access the shared property
    // you will not be able to accidentally create a separate instance of the data model
    
    private init() {
        
        if let loadedData = loadFromFile() {
            self.favorites = loadedData.favorites
            self.items = loadedData.items
        } else {
            items.append(ListItem(title: "flashlight", isChecked: false))
            items.append(ListItem(title: "toothbrush", isChecked: false))
            items.append(ListItem(title: "tent", isChecked: false))
        }
    }
    
    // read
    private func loadFromFile() -> DataManager? {
        // get the directory where documents can be stored
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        // create a path to where it will be stored
        let archiveURL = documentsDirectory.appendingPathComponent("dataModel").appendingPathExtension("plist")
        
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedData = try? Data(contentsOf: archiveURL) {
            if let decodedDataModel = try? propertyListDecoder.decode(DataManager.self, from: retrievedData) {
                return decodedDataModel
            } else {
                return nil
            }
        }
        return nil
    }
    
    // if there is no file or no decoded data, return a new data model
    
    // write
    private func saveToFile() {
        // get the directory where documents can be stored
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        // create a path to where it will be stored
        let archiveURL = documentsDirectory.appendingPathComponent("dataModel").appendingPathExtension("plist")
//        print(archiveURL)
        
        let propertyListEncoder = PropertyListEncoder()
        if let endcodedData = try? propertyListEncoder.encode(self) {
            try? endcodedData.write(to: archiveURL, options: .noFileProtection)
        }
    }
}

