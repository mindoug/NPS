//
//  ImageCache.swift
//  NPS
//
//  Created by Mindy Douglas on 6/4/23.
//

import Foundation
import UIKit

// cache saves downloaded data locally so it doesn't need to be re-downloaded every time you scroll (destroying and re-creating the row)
// NSCache manages memory associated with cache so if device is low on memory it deletes things from cache

struct ImageCache {
    static var shared = ImageCache()
    let cache = NSCache<NSString, UIImage>()
    private init() {
    }
}
