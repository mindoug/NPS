//
//  ImageCache.swift
//  NPS
//
//  Created by Mindy Douglas on 6/4/23.
//

import Foundation
import UIKit

struct ImageCache {
    static var shared = ImageCache()
    let cache = NSCache<NSString, UIImage>()
    private init() {
        
    }
}
