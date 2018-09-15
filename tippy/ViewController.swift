//
//  ViewController.swift
//  tippy
//
//  Created by Monica on 9/5/18.
//  Copyright © 2018 Monica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var bilField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func OnTap(_ sender: AnyObject) {
        view.endEditing(true)
        
    }
    
    @IBAction func CalculateTip(_ sender: AnyObject) {
        
        let tipPercentage = [0.18, 0.2, 0.25]
        
        let  bill = Double(bilField.text!) ?? 0
        let  tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

        
    }
    
}

