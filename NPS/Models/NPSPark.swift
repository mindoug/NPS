//
//  Park.swift
//  NPS
//
//  Created by Mindy Douglas on 4/29/23.
//

import Foundation

// wrapper to decode full response from NPS api (easier to access Park)
struct NPSParkWrapper: Codable {
    var total: String
    var data: [NPSPark]
    var limit: String
    var start: String
}

struct NPSPark: Codable {
    var name: String
    var designation: String
    var description: String
    var state: String
    var images: [Image]
    var addresses: [Address]
}

struct Image: Codable {
    var image: String
    var credit: String
    var title: String
    var altText: String
    var caption: String
}

extension Image {
    enum CodingKeys: String, CodingKey {
        case image = "url"
        case credit, title, altText, caption
    }
}

struct Address: Codable {
    var city: String
    var state: String
    var type: AddressType
}

extension Address {
    enum CodingKeys: String, CodingKey {
        case city, type
        case state = "stateCode"
    }
}

enum AddressType: String, Codable {
    case physical = "Physical"
    case mailing = "Mailing"
}

extension NPSPark {
    enum CodingKeys: String, CodingKey {
        case name, designation, description, images, addresses
        case state = "states"
    }
}

