//
//  Tutor.swift
//  TuffyTutor
//
//  Created by Arenas, Leo on 3/11/21.
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
