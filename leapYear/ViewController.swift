//
//  ViewController.swift
//  leapYear
//
//  Created by Jason Hsu on 2018/7/25.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var yearText: UITextField!
    @IBOutlet weak var yearDisplay: UILabel!
    @IBOutlet weak var dayDisplay: UILabel!
    @IBAction func distinguishButton(_ sender: Any) {
        
        let year: Int? = Int(yearText.text!)
        
        if let year = year {
            if (year % 4) == 0 && (year % 100) != 0 || (year % 400) == 0 {
                yearDisplay.text = "LEAP"
                dayDisplay.text = "-366 DAYS-"
            } else {
                yearDisplay.text = "COMMON"
                dayDisplay.text = "-365 DAYS-"
            }
        } else {
            yearText.text = ""
            yearText.placeholder = "Please enter a number!"
        }
        
        view.endEditing(true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = Date()
        let calendar = Calendar.current
        let thisYear = calendar.component(.year, from: date)
        if (thisYear % 4) == 0 && (thisYear % 100) != 0 || (thisYear % 400) == 0 {
            dayDisplay.text = "-366 DAYS-"
        } else {
            dayDisplay.text = "-365 DAYS-"
        }
        yearText.placeholder = "Please enter a year"
    }
}

