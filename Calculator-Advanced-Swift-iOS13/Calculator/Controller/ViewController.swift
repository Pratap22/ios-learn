//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishTypingNumber: Bool = true
    
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot cast string to double")
            }
            
            return number
        }
        
        set{
            displayLabel.text = String(newValue)
        }
    }
    
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinishTypingNumber = true
        
        if let  calcMethod = sender.currentTitle {
            let calculator = CalculatorLogic(number: displayValue)
            
            guard let result = calculator.calculate(symbol: calcMethod) else {
                fatalError("The result of the calculation is nil")
            }
            displayValue = result
        }
        
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle {
            
            if isFinishTypingNumber {
                displayLabel.text = numValue
                isFinishTypingNumber = false
                
            } else {
                if numValue == "." {
                    if displayLabel.text!.contains(".") {
                        return
                    }
                }
                displayLabel.text?.append(numValue)
            }
            
        }
        
    }
    
}

