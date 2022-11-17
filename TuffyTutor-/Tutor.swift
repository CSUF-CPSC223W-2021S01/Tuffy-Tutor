//
//  Tutor.swift
//  TuffyTutor-
//
//  Created by Evelyn Johnson on 5/6/21.
//

import Foundation

struct Tutor {
    var Tutors = String()

    init(Tutors: String) {
        self.Tutors = Tutors
    }

    func getTutorString() -> String {
        return "Tutor is " + Tutors
    }
}
