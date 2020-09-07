//
//  Item.swift
//  Todoey
//
//  Created by Alex 6.1 on 9/5/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects<Category>(fromType: Category.self, property: "items")
    // POINTS TO THE FORWARD RELATIONSHIP THAT IS OF THE TYPE CATEGORY FROM THE PROPERTY ITEMS
    
}
