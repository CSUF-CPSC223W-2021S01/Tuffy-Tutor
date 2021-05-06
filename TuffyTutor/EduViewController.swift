//
//  EduViewController.swift
//  TuffyTutor
//
//  Created by Evelyn Johnson on 5/5/21.
//

import UIKit

class EduViewController: UIViewController {
    @IBOutlet var TutorLabel: UILabel!
    @IBOutlet var TutorLabel2: UILabel!
    @IBOutlet var TutorLabel3: UILabel!
    
    @IBOutlet var AvailabilityLabel: UILabel!
    @IBOutlet var AvailabilityLabel2: UILabel!
    @IBOutlet var AvailabilityLabel3: UILabel!
    
    @IBOutlet var SubjectLabel: UILabel!
    @IBOutlet var SubjectLabel2: UILabel!
    @IBOutlet var SubjectLabel3: UILabel!

    var subjects1: Subject?
    var subjects2: Subject?
    var subjects3: Subject?
    
    var tutors1: Tutor?
    var tutors2: Tutor?
    var tutors3: Tutor?
    
    var sched1: daysOfWeek?
    var sched2: daysOfWeek?
    var sched3: daysOfWeek?
    
    var tutorbook: BookaTutor?
    var bookingtutor: Booking?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tutors1 = Tutor(Tutors: "John Smith")
        tutors2 = Tutor(Tutors: "Jane Doe")
        tutors3 = Tutor(Tutors: "Sponge Bob")
        
        subjects1 = Subject(ClassSub: "Edu 101")
        subjects2 = Subject(ClassSub: "Edu 102")
        subjects3 = Subject(ClassSub: "Edu 103")
        
        sched1 = daysOfWeek(day: "M", startTime: 9, endTime: 10)
        sched2 = daysOfWeek(day: "T", startTime: 6, endTime: 7)
        sched3 = daysOfWeek(day: "w", startTime: 5, endTime: 8)
    
        updateUI()
        // Do any additional setup after loading the view.
    }
    

    func userInput() {
        
    }
    func updateUI() { // here is where we will make the label update!
        SubjectLabel.text = subjects1!.getSubjectString()
        SubjectLabel2.text = subjects2!.getSubjectString()
        SubjectLabel3.text = subjects3!.getSubjectString()
        
        TutorLabel.text = tutors1!.getTutorString()
        TutorLabel2.text = tutors2!.getTutorString()
        TutorLabel3.text = tutors3!.getTutorString()
        
        AvailabilityLabel.text = sched1!.description
        AvailabilityLabel2.text = sched2!.description
        AvailabilityLabel3.text = sched3!.description
    }
}

/* MARK: - Navigation

      // In a storyboard-based application, you will often want to do a little preparation before navigation
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          // Get the new view controller using segue.destination.
          // Pass the selected object to the new view controller.
      }
 }
 */
