//
//  Enums.swift
//  TrainingIOS
//
//  Created by David Jardon on 18/04/2019.
//  Copyright © 2019 David Jardon. All rights reserved.
//

import Foundation

// ********** ENUMS **********
// Enum for teacher level with three options 'junior', 'medium' or 'senior'
// On each case have a parameter with level salary 'amount'
enum Salary: CustomStringConvertible {
    case junior(amount: Float)
    case medium(amount: Float)
    case senior(amount: Float)
    
    // Use CustomStringConvertible and description
    // to print String representation of the enum
    // we can localize all strings with this method
    var description: String {
        switch self {
            case .junior:
                return "junior"
            
            case .medium:
                return "medium"
            
            case .senior:
                return "senior"
        }
    }
    
    // Use amount computed var to print String representation
    // of the enum amount parameter
    var amount: String {
        var levelAmount: Float = 0.0
        switch self {
            case .junior(let amount):
                levelAmount = amount
            
            case .medium(let amount):
                levelAmount = amount
            
            case .senior(let amount):
                levelAmount = amount
        }
        
        return "\(levelAmount)"
    }
}
