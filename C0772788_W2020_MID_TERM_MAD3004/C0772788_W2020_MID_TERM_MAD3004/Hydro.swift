//
//  Hydro.swift
//  C0772788_W2020_MID_TERM_MAD3004
//
//  Created by Avani Patel on 2/13/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Hydro: Bill {
    var agencyName: String
    var unitConsumed: Int
    var ratePerUnit: Double = 20.0
    
    init(billID: String, billDate: Date, billType: BillType, agencyName: String, unitConsumed: Int) {
        self.agencyName=agencyName
        self.unitConsumed=unitConsumed
        super.init(billID: billID, billDate: billDate, billType: billType)
    }
    
    override func calculateTotalBill()
    {
        self.billAmount = Double(unitConsumed)*ratePerUnit
    }
    
    override func dispaly() {
        super.dispaly()
        calculateTotalBill()
        print("\t Bill Amount : \(billAmount.currency())")
        print("\t Agency Name : \(agencyName)")
        print("\t Unit Consumed : \(unitConsumed)")
    }
}
