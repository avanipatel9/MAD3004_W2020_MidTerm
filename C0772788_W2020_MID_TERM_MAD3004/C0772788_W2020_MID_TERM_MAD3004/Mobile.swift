//
//  Mobile.swift
//  C0772788_W2020_MID_TERM_MAD3004
//
//  Created by Avani Patel on 2/13/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Mobile: Bill
{
    var mobileManufacturerName: String
    var planName: String
    var mobileNumber: Int
    var internetGBUsed: Double
    var minuteUsed: Int
    
    init(billID: Int, billDate: Date, billType: BillType, totalBillAmount: Double, mobileManufacturerName: String, planName: String, mobileNumber: Int, internetGBUsed: Double, minuteUsed: Int) {
        self.mobileManufacturerName=mobileManufacturerName
        self.planName=planName
        self.mobileNumber=mobileNumber
        self.internetGBUsed=internetGBUsed
        self.minuteUsed=minuteUsed
        super.init(billID: billID, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
}
