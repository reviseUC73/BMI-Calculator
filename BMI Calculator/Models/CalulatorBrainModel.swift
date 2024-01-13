//
//  CalulatorBrainModel.swift
//  BMI Calculator
//
//  Created by ReviseUC73 on 13/1/2567 BE.
//  Copyright © 2567 BE Angela Yu. All rights reserved.
//

import UIKit
struct CalulatorBrainModel {
    var BmiModel:BMIModel?
    
    func getBMIValue() -> String {
        let formatStringBMI = String(format: "%.1f" , BmiModel?.value ?? 0.0)
        return formatStringBMI
    }
   
    func getAdvice() -> String {
        return BmiModel?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return BmiModel?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
//    func getColor() ->UIColor {
//        if BmiModel?.color != nil{
//            return BmiModel!.color
//        }
//        return UIColor.white
//    }
//    
//    func getAdvice() -> String {
//        if let safeAdvice = BmiModel?.advice {
//        return safeAdvice
//        }else {
//            return "non text"
//        }
//    }
    mutating func calculateBMI(w_value : Float , h_value : Float) {
        let bmiValue = w_value / ( h_value * h_value  )
        
        if bmiValue < 18.5 {
            BmiModel = BMIModel(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            BmiModel = BMIModel(value: bmiValue, advice: "Fit as a fiddle!",color: UIColor.green)
        } else {
            BmiModel = BMIModel(value: bmiValue, advice: "Eat less pies!", color: UIColor.systemPink)
        }
    }
}

