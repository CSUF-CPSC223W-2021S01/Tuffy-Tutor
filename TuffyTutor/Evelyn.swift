//
//  Evelyn.swift
//  TuffyTutor
//
//  Created by Evelyn Johnson on 3/11/21.
//

import Foundation

struct Time {
    var Hour: Int
    var Min: Int
    
    init() {
        Hour = 0
        Min = 0
    }
    
    init(Hour: Int, Min: Int) {
        self.Hour = Hour
        self.Min = Min
    }
    
    func readTime() -> Void {
        
    }
    
    func printTime() -> Void {
        print( "\(Hour) : \(Min)" )
    }
    
}

class Schedule {
    var Day: String
    var startTime: Time
    var endTime: Time
    
    init(Day: String, startTime: Time, endTime: Time) { // default constructor
        self.Day = Day
        self.startTime = startTime
        self.endTime = endTime
    }
    
    func readSchedule() -> Void { //
    /* M = Monday, T = Tuesday, W = Wednesday, TH = Thursday, and F = Friday
    */
        
    }
    
    func printSchedule() -> Void {
    }

}
