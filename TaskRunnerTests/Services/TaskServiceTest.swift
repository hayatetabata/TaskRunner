//
//  TaskServiceTest.swift
//  TaskRunnerTests
//
//  Created by 田畑颯 on 2018/07/29.
//  Copyright © 2018年 田畑颯. All rights reserved.
//

import XCTest


class TaskServiceTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAll() {
        let service = TaskService()
        let attributes: Dictionary<String, String> = ["name": "test", "deadline": "20180909"]
        service.create(attributes: attributes)
        
        let tasks = service.all()
        XCTAssertEqual(1, tasks.count)
    }
    
    func testCreate() {
        let service = TaskService()
        let attributes: Dictionary<String, String> = ["name": "test", "deadline": "20180909"]
        let task = service.create(attributes: attributes)
        XCTAssertEqual(task.name, attributes["name"])
        XCTAssertEqual(task.deadline, attributes["deadline"])
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
