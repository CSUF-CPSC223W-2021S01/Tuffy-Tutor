//
//  BookaTutor.swift
//  TuffyTutor-
//
//  Created by Evelyn Johnson on 5/7/21.
//

import Foundation

struct bookaTutor: Codable {
    var Tutor: String
    var Subject: String
    var day: String
    var StartTime: String
    var EndTime: String

    init(Tutor: String, Subject: String, day: String, StartTime: String, EndTime: String) {
        self.Tutor = Tutor
        self.Subject = Subject
        self.day = day
        self.StartTime = StartTime
        self.EndTime = EndTime
    }

    init() { // empty
        self.Tutor = ""
        self.Subject = ""
        self.day = ""
        self.StartTime = ""
        self.EndTime = ""
    }

    // encode/decode
}

struct Book {
    var book: bookaTutor

    init() {
        let propertyListDecoder = PropertyListDecoder()

        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

        let archiveURL = documentsDirectory.appendingPathComponent("TutorBookInfo").appendingPathExtension("plist")

        guard let retrievedGame = try? Data(contentsOf: archiveURL),
              let decodedGame = try? propertyListDecoder.decode(bookaTutor.self, from: retrievedGame)
        else {
            self.book = bookaTutor()
            return
        }

        self.book = decodedGame
    }

    mutating func reset() {
        book = bookaTutor() // initialize all strings as empty
    }

    func save() {
        // TODO: Save the history object into a file called game.plist
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let archiveURL = documentsDirectory.appendingPathComponent("TutorBookInfo").appendingPathExtension("plist")

        let propertyListEncoder = PropertyListEncoder()
        if let encodedGame = try? propertyListEncoder.encode(book) {
            try? encodedGame.write(to: archiveURL)
        }
    }
}
