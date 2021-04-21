//
//  Evelyn.swift
//  TuffyTutor
//
//  Created by Evelyn Johnson on 3/11/21.
//

import Foundation

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
