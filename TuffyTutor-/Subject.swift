//
//  Subject.swift
//  TuffyTutor-
//
//  Created by Evelyn Johnson on 5/6/21.
//

import Foundation

struct Subject {
    var ClassSub = String()
    
    init(ClassSub: String) {
        self.ClassSub = ClassSub
    }

    func getSubjectString() -> String {
        return "Subject: " + ClassSub
    }
}
