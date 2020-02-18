//
//  Customer.swift
//  C0772788_W2020_MID_TERM_MAD3004
//
//  Created by Avani Patel on 2/13/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Customer: IDisplay, CalculateBill
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
    var totalBillToPay : Double = 0.0
    
    init(customerID:Int, firstName:String, lastName:String, emailID:String) {
        self.customerID=customerID
        self.firstName=firstName
        self.lastName=lastName
        self.emailID=emailID.isValidEmail(email: emailID)
    }
    
    func addBill(bill: Bill, billID: String)
    {
        bills.updateValue(bill, forKey: billID)
    }
    
    func removeBill(bill: Bill, billID: String)
    {
        bills.removeValue(forKey: billID)
        print("Bill removed with ID \(billID)")
    }
    
    func calculateTotalBill() {
        for i in bills {
            totalBillToPay = totalBillToPay + i.value.billAmount
        }
    }
    
    func display()
    {
        print("-------------------------------------------------------")
        print("Customer ID : \(customerID)")
        print("Customer Name : \(fullName)")
        print("Customer Email ID : \(emailID)")
        print("-------------------Bill Information-------------------")
        
        for i in bills
        {
            i.value.display()
        }
    }
    
    

}
