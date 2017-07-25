//
//  ViewController.swift
//  Happy Tip
//
//  Created by StreetCode Academy on 7/17/17.
//  Copyright © 2017 StreetCode Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmounTtextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender:
        UITapGestureRecognizer) {
    view.endEditing(true)
    }
    @IBAction func Calculatetip(_ sender: UITextField){
        let billAmount = Double(billAmounTtextField.text!) ?? 0
        let tipAmount = billAmount * 0.2
        let total = billAmount + tipAmount
        
        tipAmountLabel.text = String(format: "$%f", tipAmount)
        totalLabel.text = String(format: "$%f", total)
    }
}

