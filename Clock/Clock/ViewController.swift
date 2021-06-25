//
//  ViewController.swift
//  Clock
//
//  Created by Mahvish Syed on 25/06/21.
//  Copyright © 2021 Mahvish Syed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        var currentTime = Date()
        
        print(currentTime)
        
        var dateFormat = DateFormatter()
        dateFormat.dateFormat = "mm/dd/yyyy"
        
        print(dateFormat.string(from: currentTime))
        
        self.dateLabel.text = dateFormat.string(from: currentTime)
        
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            var currentTime = Date()
            var dateFormat = DateFormatter()
            dateFormat.timeStyle = .medium
            self.timeLabel.text = dateFormat.string(from: currentTime)
        }
        
    }


}

