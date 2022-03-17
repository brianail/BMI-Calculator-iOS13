//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Brian Ail on 16/03/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.adivce ?? "No adivice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, adivce: "Eat more pies.", color: UIColor.blue)
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, adivce: "Fir as a fiddle", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, adivce: "Eat less pies.", color: UIColor.systemPink)
        }
    }
}
