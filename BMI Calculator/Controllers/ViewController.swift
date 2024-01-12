//
//  ViewController.swift
//  BMI Calculator
//
//  Created by ReviseUC73 on 12/1/2567 BE.
//  Copyright © 2567 BE Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wSlider: UISlider!
    @IBOutlet weak var hSlider: UISlider!
    
    @IBOutlet weak var wLabel: UILabel!
    @IBOutlet weak var hLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hSlideChange(_ sender: UISlider) {
        let height = String (format: "%.2f", sender.value)
        hLabel.text = "\(height) m"
    }
    
    @IBAction func wSildeChange(_ sender: UISlider) {
        let weight = String (format: "%.2f", sender.value)
        wLabel.text = "\(weight) kg"
    }
    
    @IBAction func calButtomPress(_ sender: UIButton) {
        let w_value = wSlider.value
        let h_value = hSlider.value
        let bmi = w_value / ( h_value *  h_value  )
//        print(bmi)
//        print( String(format: "%.1f" , bmi))
        
        
        let SubViewControl = SubViewController()
        SubViewControl.bmiVale = String(format: "%.1f" , bmi) // sent value to view (MVVM)
        
        //respresnt SubViewController in MainViewController
        self.present(SubViewControl, animated: true , completion: {
            print("Present SubViewController")
        })

        
        
    }
}

