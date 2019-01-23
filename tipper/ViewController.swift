//
//  ViewController.swift
//  tipper
//
//  Created by Kevin Zhang on 1/18/19.
//  Copyright © 2019 Kevin Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // labels for night mode
    
    @IBOutlet weak var def1: UILabel!
    @IBOutlet weak var def2: UILabel!
    @IBOutlet weak var def3: UILabel!
    @IBOutlet weak var def4: UILabel!
    @IBOutlet weak var def5: UILabel!
    @IBOutlet weak var def6: UILabel!
    @IBOutlet weak var def7: UILabel!
    //
    
//    var nightMode:Bool = false;
    @IBOutlet weak var nightView: UIView!
    @IBOutlet var fullView: UIView!
    
    @IBOutlet weak var billAmt: UITextField!
    
    @IBOutlet weak var tipAmt_15: UILabel!
    @IBOutlet weak var totAmt_15: UILabel!
    
    @IBOutlet weak var tipAmt_18: UILabel!
    @IBOutlet weak var totAmt_18: UILabel!
    
    @IBOutlet weak var tipAmt_20: UILabel!
    @IBOutlet weak var totAmt_20: UILabel!
    
    @IBOutlet weak var tipAmt_Cus: UILabel!
    @IBOutlet weak var totAmt_Cus: UILabel!
    
    @IBOutlet weak var customPerc: UITextField!
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        let bill = Double(billAmt.text!) ?? 0;

        var perc:Double = 0.15;
        var tip:Double = bill * perc;
        var total:Double = tip + bill
        tipAmt_15.text = String(format: "$%.2f", tip)
        totAmt_15.text = String(format: "$%.2f", total)
        
        perc = 0.18;
        tip = bill * perc;
        total = tip + bill;
        tipAmt_18.text = String(format: "$%.2f", tip)
        totAmt_18.text = String(format: "$%.2f", total)
        
        perc = 0.20;
        tip = bill * perc;
        total = tip + bill;
        tipAmt_20.text = String(format: "$%.2f", tip)
        totAmt_20.text = String(format: "$%.2f", total)
        
        perc = (Double(customPerc.text!) ?? 0)/100;
        tip = bill * perc;
        total = tip + bill;
        tipAmt_Cus.text = String(format: "$%.2f", tip)
        totAmt_Cus.text = String(format: "$%.2f", total)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customPerc.text = "";
        billAmt.text = "";
        UserDefaults.standard.set(false, forKey: "nightMode")
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        let nightMode = UserDefaults.standard.bool(forKey: "nightMode")
        
        if nightMode == true {
            print("ON on Main")
//            UILabel.appearance().textColor = UIColor.white
//            UILabel.appearance().textColor = UIColor.white;
            nightView.backgroundColor = UIColor.black
            
            fullView.backgroundColor =  UIColor.black
            
            var color = UIColor.white
//            billAmt.textColor = color
            
            tipAmt_15.textColor = color
            totAmt_15.textColor = color

            tipAmt_18.textColor = color
            totAmt_18.textColor = color

            tipAmt_20.textColor = color
            totAmt_20.textColor = color

            tipAmt_Cus.textColor = color
            totAmt_Cus.textColor = color
            
            def1.textColor = color
            def2.textColor = color
            def3.textColor = color
            def4.textColor = color
            def5.textColor = color
            def6.textColor = color
            def7.textColor = color
        }
        else {
            print("OFF on Main")
//            UILabel.appearance().textColor = UIColor.black
//            UILabel.appearance().textColor = UIColor.black;
            nightView.backgroundColor =  UIColor.white
            
            fullView.backgroundColor =  UIColor.white
            
            var color = UIColor.black
//            billAmt.textColor = color
            
            tipAmt_15.textColor = color
            totAmt_15.textColor = color
            
            tipAmt_18.textColor = color
            totAmt_18.textColor = color
            
            tipAmt_20.textColor = color
            totAmt_20.textColor = color
            
            tipAmt_Cus.textColor = color
            totAmt_Cus.textColor = color
            
            def1.textColor = color
            def2.textColor = color
            def3.textColor = color
            def4.textColor = color
            def5.textColor = color
            def6.textColor = color
            def7.textColor = color
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if (segue.identifier == "SegueID") {
//            let vc = segue.destination as! SettingsTableViewController
//            vc.nightMode = nightMode
//        }
//    }


}

