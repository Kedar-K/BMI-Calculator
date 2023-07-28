//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Kedar Kodgire on 13/07/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
//    let height: Int
//    let weight: Int
//
//    init(_ height: Int, _ weight: Int) {
//        self.height = height
//        self.weight = weight
//    }
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        let bmiValue = weight / pow(height, 2)
        let colors = (underweight: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), healthy: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), overweight: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", colour: colors.underweight )
        }else if bmiValue > 24.9{
            bmi = BMI(value: bmiValue, advice: "Eat more pies", colour: colors.healthy )
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat more pies", colour: colors.overweight )
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Something went wrong"
    }
    
    func getColor() -> UIColor {
        return bmi?.colour ?? UIColor.red
    }
}
