//
//  Subject.swift
//  TrainingIOS
//
//  Created by David Jardon on 18/04/2019.
//  Copyright © 2019 David Jardon. All rights reserved.
//

import Foundation

// Class Subject
public class Subject: CustomStringConvertible {
    //Properties whit optional '?' value
    var photo: String?
    var name: String?
    var year: Date?
    var teachers: [Teacher]?
    var students: [Student]?
    
    // Use description var of CustomStringConvertible
    // to print this class with custom String format
    public var description: String {
        // With """ we can print a multiline String
        return """
        Subject:
        name: \(String(describing: name))
        year: \(String(describing: year?.toFormattedString()))
        teachers: \(String(describing: teachers))
        students: \(String(describing: students))
        """
    }
    
    // Custom init (Constructor) class with default values
    convenience init(photo: String? = nil, name: String? = nil, year: Date? = nil, teachers: [Teacher]? = nil, students: [Student]? = nil) {
        self.init()
        
        // Always init all properties
        self.photo = photo
        self.name = name
        self.year = year
        self.teachers = teachers
        self.students = students
    }
}
