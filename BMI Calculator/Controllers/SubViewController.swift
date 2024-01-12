//
//  ResultBMIViewController.swift
//  BMI Calculator
//
//  Created by ReviseUC73 on 12/1/2567 BE.
//  Copyright © 2567 BE Angela Yu. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {
    var bmiVale = "bmiVale"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set bg color
        view.backgroundColor = .blue
        
        
        // UI obj must stay in .ViewDidLoad
        let label = UILabel()
        label.text = bmiVale
        label.frame =  CGRect(x: 0 , y: 0, width: 100, height: 50)
        
        // take obj to view of this screen page in View
        view.addSubview(label)
        
    }
    
   
}
