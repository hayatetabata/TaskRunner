//
//  Todo.swift
//  TaskRunner
//
//  Created by 田畑颯 on 2018/07/28.
//  Copyright © 2018年 田畑颯. All rights reserved.
//

import Foundation

class Task: NSObject, NSCoding {
    var name: String = ""
    var deadline: String! = nil
    
    init(name: String, deadline: String!) {
        self.name = name
        self.deadline = deadline
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObject(forKey: "name") as! String
        self.deadline = aDecoder.decodeObject(forKey: "deadline") as! String
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.deadline, forKey: "deadline")
    }
}
