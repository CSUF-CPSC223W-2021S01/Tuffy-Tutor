//
//  massi.swift
//  TuffyTutor
//
//  Created by Massimo Villareal on 3/11/21.
//

import Foundation

struct tutorAndSubject{
    
   var arrayofTutors = [String]()
    var arrayofSubjects = [String]()
    
    var tutorSubject = [String:Array<Any>]()     //this creates a dictionary, key: tutors, value: subject !!!!!!!!!! array as value
    var subjectTutor = [String:Array<Any>]()     //this creates a dictionary, key: subject , value: tutors !!!!!!!!!! array as value
    
    init(){
        tutorSubject = [:] // makes empty. safety
        subjectTutor = [:]// makes empty. safety
    }
    
    mutating func addTS(tutor: String, subject: String){
        if tutorSubject[tutor] == nil{      //this checks if the the tutor does not exist
            arrayofSubjects.append(subject) // adds subject to array
            tutorSubject[tutor] = arrayofSubjects   //if it does not exist, it adds it with the corresponding subjects
        }
        else{
            if tutorSubject[tutor] != nil{  // if tutor already exist,
                arrayofSubjects.append(subject) // adds subject to array
                tutorSubject[tutor] = arrayofSubjects
                print("Subject Added to Tutor")      // simply prints out that tutor already exist
            }
        }
    }
    mutating func addST(subject: String, tutor: String){
        if subjectTutor[subject] == nil{      //this checks if the the subject does not exist
            arrayofTutors.append(tutor)
            subjectTutor[subject] = arrayofTutors   //if it does not exist, it adds it with the corresponding tutors
        }
        else{
            if subjectTutor[subject] != nil{  // if subject already exist, nothing happens
                arrayofTutors.append(tutor)
                subjectTutor[subject] = arrayofSubjects
                print("Subject Already Exist")      // simply prints out that subject already exist
            }
        }
    }
    
    
    
 
    
}

