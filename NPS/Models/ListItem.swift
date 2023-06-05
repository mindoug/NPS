//
//  ListItem.swift
//  NPS
//
//  Created by Mindy Douglas on 6/3/23.
//

import Foundation

struct ListItem: Equatable, Codable {
    var id = UUID()
    var title: String
    var isChecked: Bool
    
    static func ==(lhs: ListItem, rhs: ListItem) -> Bool {
        return lhs.id == rhs.id
    }
}
