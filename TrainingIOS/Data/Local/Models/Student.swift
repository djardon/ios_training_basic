//
//  Student.swift
//  TrainingIOS
//
//  Created by David Jardon on 18/04/2019.
//  Copyright © 2019 David Jardon. All rights reserved.
//

import Foundation

// Class Student
class Student: CustomStringConvertible {
    //Properties whit optional '?' value can be nil
    var photo: String?
    var name: String?
    var surname: String?
    var age: Date?
    var phone: String?
    var address: String?
    var email: String?
    
    // Use description var of CustomStringConvertible
    // to print this class with custom String format
    var description: String {
        var ageString = ""
        if let age = self.age {
            ageString = age.defaultFormatLocale
        }
        
        // With """ we can print a multiline String
        return """
        Student:
        name: \(String(describing: name))
        surname: \(String(describing: surname))
        age: \(String(describing: ageString))
        phone: \(String(describing: phone))
        address: \(String(describing: address))
        email: \(String(describing: email))
        """
    }
    
    // Custom init (Constructor) class with default values
    convenience init(photo: String? = nil, name: String? = nil, surname: String? = nil, age: Date? = nil, phone: String? = nil, address: String? = nil, email: String? = nil) {
        self.init()
        
        // Always init all properties
        self.photo = photo
        self.name = name
        self.surname = surname
        self.age = age
        self.phone = phone
        self.address = address
        self.email = email
    }
}
