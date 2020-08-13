//
//  Item.swift
//  Todoey
//
//  Created by Pratap Sharma on 13/08/20.
//  Copyright © 2020 Pratap Sharma. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated:Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
