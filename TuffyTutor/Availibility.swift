//
//  Evelyn.swift
//  TuffyTutor
//
//  Created by Evelyn Johnson on 3/11/21.
//

import Foundation

/*
  MAY DELETE!!!
  enum daysofWeek {
     case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
 }

 class Schedule {
     let date = Date()
     let calendar = Calendar.current
     let hour: Int
     let minutes: Int
     let seconds: Int

     init() {
         self.hour = calendar.component(.hour, from: date)
         self.minutes = calendar.component(.minute, from: date)
         self.seconds = calendar.component(.second, from: date)
         print("hours = \(hour):\(minutes):\(seconds)")
     }
 }
 */

class daysOfWeek {
    var day: String
    var startTime: Int
    var endTime: Int

    init(day: String, startTime: Int, endTime: Int) {
        self.day = day
        self.startTime = startTime
        self.endTime = endTime
    }
}

class Availibility {
    var schedule = [daysOfWeek]()

    func add(Schedule: daysOfWeek) {
        schedule.append(Schedule)
    }

    func getAvailability() -> [daysOfWeek] {
        return schedule
    }
}