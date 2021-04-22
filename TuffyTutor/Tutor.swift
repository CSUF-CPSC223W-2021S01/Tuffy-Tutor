//
//  Tutor.swift
//  TuffyTutor
//
//  Created by Arenas, Leo on 3/11/21.
//

import Foundation

struct Tutor {
    var name : String? {
        willSet(newName) {
            print("There will be a change to this tutor's name. It will be changing to \(String(describing:newName))")
        }
    }
    var subject : String? {
        willSet(newSubject) {
            print("There will be a change to this tutor's subject. It will be changing to \(String(describing:newSubject))")
        }
    }
    var availability : Array<AnyObject>? {
        willSet(newAvailabilty) {
            print("There will be a change to this tutor's availabilty. It will be changing to \(String(describing:newAvailabilty))")
        }
    }
    var contactInfo : String? {
        willSet(newInfo) {
            print("There will be a change to this tutor's contact information. It will be changing to \(String(describing:newInfo))")
        }
    }
    var college : String? {
        willSet(newCollege) {
            print("There will be a change to this tutor's college. It will be changing to \(String(describing:newCollege))")
        }
    }
    init?(name : String?, subject : String?, availabilty : Array<AnyObject>?, contactInfo : String?, college : String?) {
        if (contactInfo == nil || subject == nil) {
            return nil
        }
        else {
            self.name = name
            self.subject = subject
            self.availability = availabilty
            self.contactInfo = contactInfo
            self.college = college
        }
    }
}
