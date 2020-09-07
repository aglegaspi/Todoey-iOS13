//
//  Category.swift
//  Todoey
//
//  Created by Alex 6.1 on 9/5/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>() // DEFINES FORWARD RELATIONSHIP
}
