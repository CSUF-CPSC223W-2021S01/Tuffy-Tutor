//
//  Subject.swift
//  TuffyTutor
//
//  Created by Evelyn Johnson on 5/4/21.
//

import Foundation

struct Subject {
    var ClassSub = String() // Empty array of Subjects
    
    // var SubjandTutor = [String: [Tutor]]() // [Subject:Tutors] currently its empty
    
    init(ClassSub: String) {
        self.ClassSub = ClassSub
    }

    func getSubjectString() -> String {
        return "Subject: " + ClassSub
    }
}
