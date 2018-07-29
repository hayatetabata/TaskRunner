//
//  TodoService.swift
//  TaskRunner
//
//  Created by 田畑颯 on 2018/07/28.
//  Copyright © 2018年 田畑颯. All rights reserved.
//

import Foundation
import RealmSwift

class TaskService {
    func all() -> Results<Task> {
        let realm = try! Realm()
        let tasks = realm.objects(Task.self)
        return tasks;
    }
    
    func findOrFail (taskId: Int) {

    }
    
    func create (attributes: Dictionary<String, String>) -> Task {
        let task: Task = Task()
        task.name = attributes["name"]!
        task.deadline = attributes["deadline"]
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(task)
            }
        } catch {
            NSLog("Realm Error")
        }
        return task
    }
    
    func update (task: Task, attributes: Dictionary<String, String>) -> Task {
        task.name = (attributes["name"])!
        task.deadline = attributes["deadline"]
        return task;
    }
    
    func delete (task: Task) {
        
    }
    
    func finish (task: Task) {
        
    }
}
