//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Daniel Jamsheedy on 8/19/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        // remove keyboard on tap
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        // corresponding choices to segmented control
        let percentages = [0.15, 0.18, 0.2]
        
        // set bill to current value, or zero
        let bill = Double(billField.text!) ?? 0
        
        // calculate tip using bill and current index for segmented control
        let tip = bill * percentages[tipControl.selectedSegmentIndex]
        
        // calculate total
        let total = bill + tip
        
        //set labels using format string with generated values
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

