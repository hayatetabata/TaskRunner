//
//  TodoService.swift
//  TaskRunner
//
//  Created by 田畑颯 on 2018/07/28.
//  Copyright © 2018年 田畑颯. All rights reserved.
//

import Foundation

class TaskService {
    func search () {
        
    }
    
    func findOrFail (taskId: Int) {
        
    }
    
    func create (attributes: Dictionary<String, String>) -> Task {
        let task: Task = Task(name: attributes["name"]!, deadline: attributes["deadline"])
        let userDefaults = UserDefaults.standard
        let data: NSData = NSKeyedArchiver.archivedData(withRootObject: task) as NSData
        userDefaults.set(data, forKey: task.name)
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
