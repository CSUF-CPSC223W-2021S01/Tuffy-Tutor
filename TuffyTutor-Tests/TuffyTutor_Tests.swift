//
//  TuffyTutor_Tests.swift
//  TuffyTutor-Tests
//
//  Created by Evelyn Johnson on 5/6/21.
//

import XCTest
@testable import TuffyTutor_

class TuffyTutor_Tests: XCTestCase {

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

    
    func testAvailability(){
        

 
    func testSubject()
    {
        let SubjectTest = Subject(ClassSub: "Math")
        
        XCTAssertEqual(SubjectTest.ClassSub, "Math")
        XCTAssertEqual(SubjectTest.getSubjectString(), "Subject: Math")
    }
    
    func testTutor()
    {
        let TutorTest = Tutor(Tutors: "Spongebob")
        
        XCTAssertEqual(TutorTest.Tutors, "Spongebob")
        XCTAssertEqual(TutorTest.getTutorString(), "Tutor is Spongebob")
        
    }
    
    func testAvailability()
    {

        let DoWtest = daysOfWeek(day: "Monday", startTime: 800, endTime: 900)
        
        XCTAssertEqual(DoWtest.day, "Monday")
        XCTAssertEqual(DoWtest.startTime, 800)
        XCTAssertEqual(DoWtest.endTime, 900)

    }

        
    }
    


}
