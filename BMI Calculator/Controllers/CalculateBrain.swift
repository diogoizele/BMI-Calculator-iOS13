//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Diogo Gabriel Izele on 09/01/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain {
    
    private var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        
        let bmiValue = Float(weight) / pow(height, 2)
        
        var advice: String
        var color: UIColor
        
        if bmiValue < BMI.UNDERWEIGHT {
            advice = "You should eat more apple pies!"
            color = UIColor(red: 0.35, green: 0.65, blue: 0.85, alpha: 1.0)
        } else if bmiValue > BMI.OVERWEIGHT {
            advice = "You should walk more often!"
            color = UIColor(red: 0.90, green: 0.30, blue: 0.35, alpha: 1.0)
        } else {
            advice = "Fit as a fiddle!"
            color = UIColor(red: 0.45, green: 0.80, blue: 0.45, alpha: 1.0)
        }
        
        bmi = BMI(value: bmiValue , advice: advice, color: color)
    }
    
    func getBMI() -> BMI {
        bmi!
    }
}
