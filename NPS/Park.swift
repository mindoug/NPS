//
//  Park.swift
//  NPS
//
//  Created by Mindy Douglas on 4/29/23.
//

import Foundation

struct Park {
    var name: String
    var designation: String
    var description: String
    var state: String
    var image: [Image]
    var address: [Address]
    
    static func loadParkData() {
        // testing a change...
    }
}

struct Image {
    var image: String
    var credit: String
    var title: String
    var altText: String
    var caption: String
}

struct Address {
    var city: String
    var state: String
    var type: AddressType
}

enum AddressType {
    case physical
    case mailing
}

