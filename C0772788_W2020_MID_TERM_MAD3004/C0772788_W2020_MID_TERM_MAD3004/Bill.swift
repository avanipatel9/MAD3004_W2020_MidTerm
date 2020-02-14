//
//  Bill.swift
//  C0772788_W2020_MID_TERM_MAD3004
//
//  Created by Avani Patel on 2/12/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

enum BillType
{
    case INTERNET, MOBILE, HYDRO
}

class Bill {
    var billID: Int
    var billDate: Date
    var billType: BillType
    var billAmount: Double = 0.0
    
    init(billID: Int, billDate: Date, billType: BillType) {
        self.billID = billID
        self.billDate = billDate
        self.billType = billType
    }
    

}
