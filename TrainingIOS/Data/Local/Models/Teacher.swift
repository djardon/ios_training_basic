//
//  Teacher.swift
//  TrainingIOS
//
//  Created by David Jardon on 18/04/2019.
//  Copyright © 2019 David Jardon. All rights reserved.
//

import Foundation

// Class Teacher
class Teacher: CustomStringConvertible {
    // Enum for teacher type with two options 'intern' or 'extern'
    enum TeacherType: CustomStringConvertible {
        case intern
        case extern
        
        // Use CustomStringConvertible and description
        // to print String representation of the enum
        // we can localize all strings with this method
        var description: String {
            switch self {
                case .intern:
                    return "Intern"
                
                case .extern:
                    return "Extern"
            }
        }
    }
    
    //Properties whit optional '?' value can be nil
    var photo: String?
    var name: String?
    var surname: String?
    var age: Date?
    var email: String?
    var type: TeacherType?
    var salary: Salary?
    
    // Use description var of CustomStringConvertible
    // to print this class with custom String format
    public var description: String {
        var ageString = ""
        if let age = self.age {
            ageString = age.defaultFormatLocale
        }
        
        // With """ we can print a multiline String
        return """
        Teacher:
        name: \(String(describing: name))
        surname: \(String(describing: surname))
        age: \(String(describing: ageString))
        email: \(String(describing: email))
        type: \(String(describing: type))
        salary: \(String(describing: salary))
        """
    }
    
    // Custom init (Constructor) class with default values
    convenience init(photo: String? = nil, name: String? = nil, surname: String? = nil, age: Date? = nil, email: String? = nil, type: TeacherType? = nil, salary: Salary? = nil) {
        self.init()
        
        // Always init all properties
        self.photo = photo
        self.name = name
        self.surname = surname
        self.age = age
        self.email = email
        self.type = type
        self.salary = salary
    }
}
