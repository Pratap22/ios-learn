//
//  Category.swift
//  Todoey
//
//  Created by Pratap Sharma on 13/08/20.
//  Copyright © 2020 Pratap Sharma. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
}
