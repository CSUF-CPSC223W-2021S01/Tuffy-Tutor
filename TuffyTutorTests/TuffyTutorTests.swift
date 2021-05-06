//
//  TuffyTutorTests.swift
//  TuffyTutorTests
//
//  Created by Evelyn Johnson on 3/11/21.
//

import XCTest
@testable import TuffyTutor

class TuffyTutorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSubject()
    {
        
    }
    func testTutor()
    {
        
    }
    func testDaysOfWeek()
    {
        var test = daysOfWeek(day: "Monday", startTime: 800, endTime: 900)
        
        XCTAssertEqual(test.day, "Monday")
        XCTAssertEqual(test.startTime, 800)
        XCTAssertEqual(test.endTime, 900)
        
        //XCTAssertEqual(test.description , "Monday")
        
    }
    func testBookATutor()
    {
        
    }
    

}
