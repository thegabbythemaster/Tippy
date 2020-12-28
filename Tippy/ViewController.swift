//
//  ViewController.swift
//  Tippy
//
//  Created by Gabby Gonzalez on 12/28/20.
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
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get bill
        let bill  = Double(billField.text!) ?? 0
        
        //calculate tp and total
        let tipPercentanges = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentanges[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update tip and total label
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

