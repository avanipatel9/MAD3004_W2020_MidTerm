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
    var ratePerGB: Double = 7.5
    var ratePerMinute: Double = 0.50
    
    
    init(billID: String, billDate: Date, billType: BillType, mobileManufacturerName: String, planName: String, mobileNumber: Int, internetGBUsed: Double, minuteUsed: Int) {
        self.mobileManufacturerName=mobileManufacturerName
        self.planName=planName
        self.mobileNumber=mobileNumber
        self.internetGBUsed=internetGBUsed
        self.minuteUsed=minuteUsed
        super.init(billID: billID, billDate: billDate, billType: billType)
    }
    
    override func calculateTotalBill()
    {
        self.billAmount = internetGBUsed*ratePerGB + Double(minuteUsed)*ratePerMinute
    }
    
    override func dispaly() {
        super.dispaly()
        calculateTotalBill()
        print("\t Bill Amount : \(billAmount.currency())")
        print("\t Manufacturer Name : \(mobileManufacturerName)")
        print("\t Plan Name : \(planName)")
        print("\t Mobile Number : \(mobileNumber)")
        print("\t Internet Usage : \(internetGBUsed.internetData())")
        print("\t Minutes Usage : \(minuteUsed)")
    }
    
}
