//
//  Availability.swift
//  TuffyTutor-
//
//  Created by Evelyn Johnson on 5/6/21.
//

import Foundation

class daysOfWeek: CustomStringConvertible {
    var day: String
    var startTime: Int
    var endTime: Int

    init(day: String, startTime: Int, endTime: Int) {
        self.day = day
        self.startTime = startTime
        self.endTime = endTime
    }

    var description: String {
        return "Day: \(day)\nStart Time: \(startTime)\nEnd Time: \(endTime)\n \n"
    }
}
