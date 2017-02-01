//
//  Task.swift
//  RealmTodo
//
//  Created by Vina Melody on 1/2/17.
//  Copyright © 2017 Vina Melody. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    
    dynamic var taskId = NSUUID().uuidString
    
    dynamic var title = ""
    dynamic var done = false
    dynamic var created = Date()
    dynamic var priority = 0
    
    override class func primaryKey() -> String? {
        return "taskId"
    }
    
    override class func indexedProperties() -> [String] {
        return ["done"]
    }
    
    override class func ignoredProperties() -> [String] {
        return []
    }
}
