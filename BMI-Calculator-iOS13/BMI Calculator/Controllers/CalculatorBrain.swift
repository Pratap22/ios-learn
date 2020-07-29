//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Pratap Sharma on 30/07/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi:BMI?
    
    mutating func calculate(_ height:Float, _ weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Very fit", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eas less pies", color: UIColor.red)
        }
        
        
    }
    
    func getBmiValue() -> String {
        return  String(format: "%.2f", bmi?.value ?? 0.0)
    }
    
    func getBmiAdvice() -> String {
        return  bmi?.advice ?? ""
    }
    
    func getBmiColor() -> UIColor {
        return  bmi?.color ?? UIColor.green
    }
}
