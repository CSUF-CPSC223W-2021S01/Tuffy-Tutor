//
//  BookaTutor.swift
//  TuffyTutor
//
//  Created by Evelyn Johnson on 5/6/21.
//

import Foundation

 struct BookaTutor {
   
     var TutorName: String
     var Subject: String
     var StartTime: String
     var EndTime: String
    
     init(TutorName: String, Subject: String, StartTime: String, EndTime: String) {
         self.TutorName = TutorName
         self.Subject = Subject
         self.StartTime = StartTime
         self.EndTime = EndTime
     }
   
 }


 struct Booking {
     var bookingdata : BookaTutor
    
    
    
    
 }
    
     //text = Smith
    
     func save() {
             // TODO: Save the history object into a file called game.plist
             let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
             let archiveURL = documentsDirectory.appendingPathComponent("contacts").appendingPathExtension("plist")

             let propertyListEncoder = PropertyListEncoder()
             if let encodedGame = try? propertyListEncoder.encode(history) {
                 try? encodedGame.write(to: archiveURL)
             }
         }
    
 }
 */
