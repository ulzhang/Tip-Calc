//
//  ViewController.swift
//  tipper
//
//  Created by Kevin Zhang on 1/18/19.
//  Copyright © 2019 Kevin Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmt: UITextField!
    @IBOutlet weak var tipAmt: UILabel!
    @IBOutlet weak var ttlAmt: UILabel!
    @IBOutlet weak var tipPerc: UISegmentedControl!
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        let bill = Double(billAmt.text!) ?? 0;
        
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipPerc.selectedSegmentIndex];
        let total = bill + tip;
        
        tipAmt.text = String(format: "$%.2f", tip)
        ttlAmt.text = String(format: "$%.2f", total)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.billAmt.becomeFirstResponder()
    }


}

