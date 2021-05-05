//
//  Rafael.swift
//  TuffyTutor
//
//  Created by Lopez, Rafael on 3/11/21.
//

import Foundation

struct College {
    var CollegeandSubj = [String: [Subject]]() // [college:Subjects] currently its empty

    mutating func lookup(input: String) {
        print(CollegeandSubj[input]!)
    }

    mutating func add() {}
}
