//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Doniyorbek Ibrokhimov  on 12/02/23.
//  Copyright © 2023 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number : Double?
    
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            } else if(symbol == "AC") {
                return 0
            } else if(symbol == "%") {
                return n * 0.01
            } else if symbol == "+" {
                intermediateCalculation = (n1: n, calcMethod: symbol)
            } else if symbol == "=" {
                
            }
        }
            
        
        return nil
        
        
        
        
    }
}
