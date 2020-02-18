//
//  Insurance.swift
//  C0772788_W2020_MID_TERM_MAD3004
//
//  Created by Avani Patel on 2/18/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

enum InsuranceType {
    case HOME, CAR, BUSINESS
}

class Insurance : Bill
{
    var insuranceProviderName: String
    var insuranceType: InsuranceType
    var startDate: Date
    var endDate: Date
    var totalDays: Int
    var totalInstallmentToPay: Double = 0.0
    
    init(billID: String, billDate: Date, billType: BillType, insuranceProviderName: String, insuranceType: InsuranceType, startDate: Date, endDate: Date) {
        self.insuranceProviderName = insuranceProviderName
        self.insuranceType = insuranceType
        self.startDate = startDate
        self.endDate = endDate
        self.totalDays = Calendar.current.dateComponents([.day], from: startDate,to: endDate).day!
        super.init(billID: billID, billDate: billDate, billType: billType)
    }
    
    override func display() {
        super.display()
        print("Insurance Provider Name : \(insuranceProviderName)")
        print("Insurance Type : \(insuranceType)")
        print("Start Date : \(startDate.getForamttedDate())")
        print("End Date : \(endDate.getForamttedDate())")
        print("Total Installment to Pay : \(totalInstallmentToPay.currency())")
    }
    
    
    
}
