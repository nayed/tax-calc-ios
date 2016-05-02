//
//  TaxCalculatorModel.swift
//  TaxCalc
//
//  Created by stagiaire on 02/05/2016.
//  Copyright © 2016 Nayed. All rights reserved.
//

import Foundation

class TaxCalculator {
    var totalPretax: Double
    var taxPct: Double      // tax percentage
    var totalPostTax: Double {
        get {
            return totalPretax * (taxPct + 1)
        }
    }
    
    init() {
        self.totalPretax = 0
        self.taxPct = 0
    }
    
    func calcTotalWithTax(totalPretax: Double, taxPct: Double) -> Double {
        self.totalPretax = totalPretax
        self.taxPct = taxPct
        
        return totalPretax * (taxPct + 1)
    }
}