//
//  ViewController.swift
//  Prework_HevertPeralta
//
//  Created by Hevert Peralta on 9/3/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    let numF = NumberFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        settingsView.image=UIImage(systemName: "gear")
        billAmountTextField.keyboardType = .numberPad
        billAmountTextField.keyboardAppearance = .dark
        
        billAmountTextField.becomeFirstResponder()
        
        numF.numberStyle = .currency
        
        self.title = "Tip Calculator"
        
    }
    
    @IBOutlet weak var settingsView: UIBarButtonItem!
    
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //Bill amount assignment
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Tip and total bill calculation
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update tip label
        //tipAmountLabel.text = String(format: "$%.2f", tip)
        tipAmountLabel.text = numF.string(from: tip as NSNumber)
        
        //Update total amount
        //totalLabel.text = String(format: "$%.2f", total)
        totalLabel.text = numF.string(from: total as NSNumber)
        
    }
    
    
        
}

