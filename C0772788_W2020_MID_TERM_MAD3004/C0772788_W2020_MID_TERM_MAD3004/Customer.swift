//
//  Customer.swift
//  C0772788_W2020_MID_TERM_MAD3004
//
//  Created by Avani Patel on 2/13/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class Customer
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

}
