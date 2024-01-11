//
//  BMI.swift
//  BMI Calculator
//
//  Created by Diogo Gabriel Izele on 11/01/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    static let UNDERWEIGHT: Float = 18.5
    static let OVERWEIGHT: Float = 24.9
    
    static let DEFAULT_VALUE: Float = 0.0
    
    let value: Float
    let advice: String
    let color: UIColor
    
    func getFormattedValue() -> String {
        return String(format: "%.1f", self.value)
    }
}
