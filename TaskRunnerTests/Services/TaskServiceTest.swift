//
//  TaskServiceTest.swift
//  TaskRunnerTests
//
//  Created by 田畑颯 on 2018/07/29.
//  Copyright © 2018年 田畑颯. All rights reserved.
//

import XCTest
@testable import TaskRunner
@testable import RealmSwift

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
        
        let tasks = service.all()
        XCTAssertEqual(0, tasks.count)
    }
    
    func testCreate() {
        let service = TaskService()
        let attributes: Dictionary<String, String> = ["name": "test", "deadline": "20180909"]
        let result = service.create(attributes: attributes)
        XCTAssertEqual(result.name, attributes["name"])
        XCTAssertEqual(result.deadline, attributes["deadline"])
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
