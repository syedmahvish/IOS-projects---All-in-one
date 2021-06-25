//
//  ViewController.swift
//  Counter
//
//  Created by Mahvish Syed on 25/06/21.
//  Copyright © 2021 Mahvish Syed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resetButtonTap(_ sender: UIBarButtonItem) {
        counterLabel.text = "0"
    }
    
    @IBAction func incrementCounter(_ sender: UIButton) {
        if let numText = counterLabel.text,
           var num = Int(numText) {
            num = num + 1
            counterLabel.text = String(num)
        }
    }
}

