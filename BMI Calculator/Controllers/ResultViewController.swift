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
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
