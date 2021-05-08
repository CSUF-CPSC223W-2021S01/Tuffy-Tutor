//
//  BookaTutorViewController.swift
//  TuffyTutor-
//
//  Created by Evelyn Johnson on 5/6/21.
//

import UIKit

class BookaTutorViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var TutorNameLabel: UILabel!
    
    @IBOutlet weak var inputTutor: UITextField!
    
    
    @IBOutlet weak var SubjectNameLabel: UILabel!
    
    
    @IBOutlet weak var inputSubject: UITextField!
    
    
    @IBOutlet weak var DayNameLabel: UILabel!
    
    
    @IBOutlet weak var inputDayofweek: UITextField!
    
    
    @IBOutlet weak var StartTimeLabel: UILabel!
    
    
    @IBOutlet weak var inputStartTime: UITextField!
    
    
    @IBOutlet weak var EndTimeLabel: UILabel!
    
    @IBOutlet weak var inputEndtime: UITextField!
    
    
    @IBAction func Reset(_ sender: UIButton) {
    }
    
    let userTutor = UserDefaults()
    let userSubj = UserDefaults()
    let userDay = UserDefaults()
    let userStartT = UserDefaults()
    let userEndT = UserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        inputTutor.delegate = self
        inputSubject.delegate = self
        inputDayofweek.delegate = self
        inputStartTime.delegate = self
        inputEndtime.delegate = self
        
        
        if let value1 = userTutor.value(forKey: "Tutor Name") as? String {
            TutorNameLabel.text = "last saved Tutor was " + value1 + ". What tutor would you like now?"
        }
        
        if let value2 = userTutor.value(forKey: "Subject Name") as? String {
            SubjectNameLabel.text = "last saved Subject was " + value2 + ". What Subject would you like now?"
        }
        if let value3 = userTutor.value(forKey: "Day Name") as? String {
            DayNameLabel.text = "last saved Day was " + value3 + ". What Day would you like now?"
        }
        if let value4 = userTutor.value(forKey: "Start Name") as? String {
            StartTimeLabel.text = "last saved Start time was " + value4 + ". What Start time would you like now?"
        }
        if let value5 = userTutor.value(forKey: "End Name") as? String {
            EndTimeLabel.text = "last saved End time was " + value5 + ". What End time would you like now?"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // do stuff
        userTutor.setValue(inputTutor.text, forKey: "Tutor Name")
        userSubj.setValue(inputSubject.text, forKey: "Subject Name")
        userDay.setValue(inputDayofweek.text, forKey: "Day Name")
        userStartT.setValue(inputStartTime.text, forKey: "Start Name" )
        userEndT.setValue(inputEndtime.text, forKey: "End Name")
        
       // inputTutor.resignFirstResponder() // tells system to return keyboard
        return true
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

 
