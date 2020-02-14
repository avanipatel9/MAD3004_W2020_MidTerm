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
        return firstName+lastName
    }
    var emailID:String
    lazy var bills = [Int : Bill]()
    
    init(customerID:Int, firstName:String, lastName:String, emailID:String) {
        self.customerID=customerID
        self.firstName=firstName
        self.lastName=lastName
        self.emailID=emailID
    }
    
    func dispaly() {
        print("Customer ID : \(customerID)")
        print("Customer Name : \(fullName)")
        print("Customer Email ID : \(emailID)")
        print("--------Bill Information--------")
        print("**********************************")
        for (billID, bill) in bills
        {
            print("Bill ID : \(billID)")
            print("Bill Date : \(bill.billDate)")
            print("Bill Type : \(bill.billType)")
            print("Bill Amount : \(bill.billAmount)")
            
            switch bill.billType
            {
                case BillType.HYDRO:
                    print("Agency Name : ")
                    print("Unit Consumed : ")
                
                case BillType.INTERNET:
                    print("Provider Name : ")
                    print("Internet Usage : ")
            
                case BillType.MOBILE:
                    print("Manufacturer Name : ")
                    print("Plan Name : ")
                    print("Mobile Number : ")
                    print("Internet Usage : ")
                    print("Minutes Usage : ")
                default:
                    ""
                    //print("*************This Customer has no bills******************")
            }
            
            print("*********************************************")
            print("Total Bill Amount to Pay : ")
            
        }
    }

}
