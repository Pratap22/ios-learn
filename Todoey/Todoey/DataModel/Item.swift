//
//  Item.swift
//  Todoey
//
//  Created by Pratap Sharma on 11/08/20.
//  Copyright © 2020 Pratap Sharma. All rights reserved.
//

import Foundation

// Codable = Encodable, Decodable
class Item: Codable {
    var title:String = ""
    var done: Bool = false
}
