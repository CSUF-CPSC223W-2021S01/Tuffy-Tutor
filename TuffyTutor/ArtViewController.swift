//
//  ViewController.swift
//  TuffyTutor
//
//  Created by Lopez, Rafael on 5/6/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var TutorLabel: UILabel!

    @IBOutlet var AvailabilityLabel: UILabel!

    @IBOutlet var SubjectLabel: UILabel!

    var subjects: Subject?
    var tutors : Tutor?
    var sched1 : daysOfWeek?
    var avail : Availibility?

    func CollegeSubjects() { // add subjects here
        subjects!.add(Subject: "Subject Test")
    }

    func CollegeTutors() { // add tutors here
        tutors!.add(Tutor: "Tutor Test")
    }

    func CollegeAvailibility() { // add Availability here
        avail!.add(Schedule: sched1!)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        subjects = Subject()
        tutors = Tutor()
        sched1 = daysOfWeek(day: "M", startTime: 9, endTime: 10)
        avail = Availibility()
        CollegeSubjects()
        CollegeTutors()
        updateUI()
        // Do any additional setup after loading the view.
    }



    
    func updateUI() { // here is where we will make the label update!
        
        var subjarr = subjects!.getSubjectArrays()
        var subjstring : String = ""
        

        for subjects in subjarr {
            subjstring = subjects + " , " // this string will change the subject label
        }
    
        SubjectLabel.text = subjstring
        //
        
        let tutorarr = tutors!.getTutorArrays()
        var tutorstring: String = ""
        
         for tutor in tutorarr {
             tutorstring = tutor + " , " // make label display all the subjects
         }
        
        TutorLabel.text = tutorstring
        //
    
        /*
        let availarr = avail!.getAvailability() // an array of objects
        var availstring = ""
        
       for avails in availarr {
            availstring = availarr + " , "
        }
    
       //AvailabilityLabel.text =
        //

    }

    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
     }
     */
}
