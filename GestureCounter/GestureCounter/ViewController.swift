//
//  ViewController.swift
//  GestureCounter
//
//  Created by Mahvish Syed on 25/06/21.
//  Copyright © 2021 Mahvish Syed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var counterButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "0"
        
        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(incrementCounter(_:)))
        counterButton.addGestureRecognizer(gesture)
        
    }

    @IBAction func resetCounter(_ sender: UIBarButtonItem) {
        counterLabel.text = "0"
    }
    
    @IBAction func incrementCounter(_ sender: UIButton) {
        guard let labelText = counterLabel.text, var num = Int(labelText) else {
            return
        }
        
        num += 1
        counterLabel.text = String(num)
    }
}

