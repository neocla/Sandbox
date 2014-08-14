//
//  TodoDataManager.swift
//  TodoApp
//
//  Created by 松谷淳史 on 2014/08/11.
//  Copyright (c) 2014年 Atsuhi Matsutani. All rights reserved.
//

import Foundation

struct TODO {
    var title : String
}

class TodoDataManager
{
    var todoList : [TODO]
    let STORE_KEY = "TodoDataManager.store_key"
    
    init() {
        let defaults = NSUserDefaults.standardUserDefaults()
        if let data = defaults.objectForKey(self.STORE_KEY) as? [String] {
            self.todoList = data.map { title in
                TODO(title: title)
            }
        } else {
            self.todoList = []
        }
    }
    
    func save() {
        let defaults = NSUserDefaults.standardUserDefaults()
        let data = self.todoList.map { todo in
            todo.title
        }
        defaults.setObject(data, forKey: self.STORE_KEY)
    }
    
    class func validate(todo: TODO) -> Bool {
        return (todo.title != "")
    }
    
    func create(todo: TODO!) -> Bool {
        if TodoDataManager.validate(todo) {
            self.todoList += todo
            return true
        }
        return false
    }
    
    func update(todo: TODO!, at index: Int) -> Bool {
        if(index >= self.todoList.count) {
            return false
        }
        
        if TodoDataManager.validate(todo) {
            todoList[index] = todo
//            self.save()
            return true
        }
        return false
    }
    
    func remove(index: Int) -> Bool {
        if(index >= self.todoList.count) {
            return false
        }
        
        self.todoList.removeAtIndex(index)
//        self.save()
        
        return true
    }
    
    var size : Int {
    return todoList.count
    }
    
    subscript(index: Int) -> TODO {
        return todoList[index]
    }
    
    class var sharedInstance : TodoDataManager {
    struct Static {
        static let instance : TodoDataManager = TodoDataManager()
        }
        return Static.instance
    }
    
}