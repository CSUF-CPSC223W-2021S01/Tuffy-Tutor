//
//  TuffyTutor.swift
//  TuffyTutor
//
//  Created by Evelyn Johnson on 5/4/21.
//

import Foundation

struct TuffyTutor {
    var arrayofCollege: [String] // Array of college strings

    mutating func lookup(collegeName: String) {
        for name in arrayofCollege {
            if name == collegeName {
                print("The College is \(collegeName)")
            }
        }
    }

    init(colleges: [String]) {
        self.arrayofCollege = colleges
    }
}
