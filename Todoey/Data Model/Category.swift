//
//  Category.swift
//  Todoey
//
//  Created by Игорь on 26.08.2018.
//  Copyright © 2018 Igor Podosonov. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
