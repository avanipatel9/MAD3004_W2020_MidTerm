//
//  Internet.swift
//  C0772788_W2020_MID_TERM_MAD3004
//
//  Created by Avani Patel on 2/13/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Internet: Bill {
    var providerName: String
    var internetGBUsed: Double
    
    init(billID: Int, billDate: Date, billType: BillType, totalBillAmount: Double, providerName: String, internetGBUsed: Double)
    {
        self.providerName = providerName
        self.internetGBUsed = internetGBUsed
        super.init(billID: billID, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
}
