//
//  main.swift
//  TuffyTutor
//
//  Created by Massimo Villareal on 4/20/21.
//

import Foundation


var schedule = [daysOfWeek(day: "Monday", startTime: 5, endTime: 7),daysOfWeek(day: "Tuesday", startTime: 5, endTime: 7)]

var tutor1 = Tutor(name:"Jack", subject:"Math", availabilty: schedule , contactInfo: "12343@gmail.com", college: "Math")
var tutor2 = Tutor(name:"Jack", subject:"Math", availabilty: schedule , contactInfo: "12343@gmail.com", college: "Math")




var math = dictionary()
math.add(subject: "Math", tutor: tutor1!)
