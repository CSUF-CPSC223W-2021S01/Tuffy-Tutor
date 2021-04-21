//
//  Rafael.swift
//  TuffyTutor
//
//  Created by Lopez, Rafael on 3/11/21.
//

import Foundation



struct services {
    var colleges : [String : Array<String>] //[colleges:tutors]
    
    mutating func lookup(input: String){
        print(colleges[input]!)
    }
    
    init?(colleges : [String : Array<String>?]){
        if(colleges == [nil:nil]){
            return nil
        }
        else{
            self.init(colleges: [:])
        }
    }
}


