//
//  Customer.swift
//  C0772788_W2020_MID_TERM_MAD3004
//
//  Created by Avani Patel on 2/13/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Customer: IDisplay
{
    var customerID:Int
    var firstName:String
    var lastName:String
    var fullName:String
    {
        return "\(firstName) \(lastName)"
    }
    var emailID:String
    lazy var bills = [String : Bill]()
    
    init(customerID:Int, firstName:String, lastName:String, emailID:String) {
        self.customerID=customerID
        self.firstName=firstName
        self.lastName=lastName
        self.emailID=emailID
    }
    
    func addBill(bill: Bill, billID: String)
    {
        bills.updateValue(bill, forKey: billID)
    }
    
    func dispaly() {
        print("Customer ID : \(customerID)")
        print("Customer Name : \(fullName)")
        print("Customer Email ID : \(emailID)")
        print("--------Bill Information--------")
        for i in bills
        {
            i.value.dispaly()
        }
        print("*********************************************")
        print("Total Bill Amount to Pay : ")
        print("*********************************************")
    }

}
