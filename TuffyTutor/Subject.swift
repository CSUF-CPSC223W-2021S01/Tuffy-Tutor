//
//  Subject.swift
//  TuffyTutor
//
//  Created by Evelyn Johnson on 5/4/21.
//

import Foundation

struct Subject {
    var ClassSub: String
    var SubjandTutor = [String: [Tutor]]() // [Subject:Tutors] currently its empty
    
    init(subject: String) {
        self.ClassSub = subject
    }
    
    mutating func lookup(input: String) {
        print(SubjandTutor[input]!)
    }
    
    mutating func add() {}
}
