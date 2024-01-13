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
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiVal
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reCalculate(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    

}
