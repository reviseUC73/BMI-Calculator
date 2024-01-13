//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by ReviseUC73 on 13/1/2567 BE.
//  Copyright © 2567 BE Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiVal :String?
    var advice : String?
    var color : UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviseLabel: UILabel!
//    @IBOutlet weak var colorBackground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiVal
//        colorBackground.backgroundColor = color
        view.backgroundColor = color
        adviseLabel.text = advice
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reCalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
