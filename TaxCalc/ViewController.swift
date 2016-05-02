//
//  ViewController.swift
//  TaxCalc
//
//  Created by stagiaire on 02/05/2016.
//  Copyright © 2016 Nayed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var rate: UISlider!
    @IBOutlet weak var calculateBtn: UIButton!
    @IBOutlet weak var result: UITextView!
    @IBOutlet var tgr: UITapGestureRecognizer!
    @IBOutlet weak var rateLabel: UILabel!
    
    let taxCalc = TaxCalculator()
    
    @IBAction func viewTaped(sender: AnyObject) {
        amount.resignFirstResponder()
    }
    
    @IBAction func calculateBtnTaped(sender: AnyObject) {
        amount.resignFirstResponder()
        self.updateResult()
    }
    
    @IBAction func sliderChange(sender: AnyObject) {
        rateLabel.text = "Rate (\(ceil(rate.value))%)"
        self.updateResult()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rateLabel.text = "Rate (\(rate.value)%)"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateResult() {
        let amountFT = Double((amount.text! as NSString).doubleValue)
        let tax = Double(ceil(rate.value)) / 100
        let totalTTC = taxCalc.calcTotalWithTax(amountFT, taxPct: tax)
        
        result.text = String(totalTTC) + " €"
    }


}

