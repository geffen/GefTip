//
//  ViewController.swift
//  GefTip
//
//  Created by Joseph Van Geffen on 10/25/15.
//  Copyright © 2015 Joseph Van Geffen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipChoice: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        //Open Keyboard immediately - UX doesn't need to wait
        billField.becomeFirstResponder()
    }

    @IBAction func billChange(sender: AnyObject) {
        var tipPercentages = [0.18,0.2,0.22]
        let tipChosen = tipPercentages[tipChoice.selectedSegmentIndex]
        
        let billAmount = NSString(string:billField.text!).doubleValue
        let tip = billAmount * tipChosen
        let total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
     
        tipLabel.text = String (format: "$%.2f", tip)
        totalLabel.text = String (format: "$%.2f", total)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

