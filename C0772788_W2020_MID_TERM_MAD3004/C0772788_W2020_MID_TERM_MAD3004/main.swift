//
//  main.swift
//  C0772788_W2020_MID_TERM_MAD3004
//
//  Created by Avani Patel on 2/12/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

var m1 = Mobile(billID: "MOB001", billDate: Date.from(year: 2019, month: 01, day: 20) ?? Date(), billType: BillType.MOBILE, mobileManufacturerName: "Galaxy Samsung", planName: "Prepaid Talk + Text plan", mobileNumber: "+1(467)-345-6789", internetGBUsed: 5.0, minuteUsed: 356)
var m2 = Mobile(billID: "MOB002", billDate: Date.from(year: 2018, month: 08, day: 15) ?? Date(), billType: BillType.MOBILE, mobileManufacturerName: "Apple", planName: "Prepaid + Text plan", mobileNumber: "6471234567", internetGBUsed: 2.0, minuteUsed: 250)


var i1 = Internet(billID: "NET001", billDate: Date.from(year: 2018, month: 07, day: 29) ?? Date(), billType: BillType.INTERNET, providerName: "Bell", internetGBUsed: 500.0)
var i2 = Internet(billID: "NET002", billDate: Date.from(year: 2018, month: 12, day: 17) ?? Date(), billType: BillType.INTERNET, providerName: "Roger", internetGBUsed: 300)
var i3 = Internet(billID: "NET003", billDate: Date.from(year: 2020, month: 01, day: 31) ?? Date(), billType: BillType.INTERNET, providerName: "Bell", internetGBUsed: 250)

var h1 = Hydro(billID: "HYD001", billDate: Date.from(year: 2019, month: 04, day: 01) ?? Date(), billType: BillType.HYDRO, agencyName: "Planet Energy", unitConsumed: 29)
var h2 = Hydro(billID: "HYD002", billDate: Date.from(year: 2019, month: 10, day: 12) ?? Date(), billType: BillType.HYDRO, agencyName: "Planet Energy", unitConsumed: 50)


var c1 = Customer(customerID: 1, firstName: "Avani", lastName: "Patel", emailID: "aghkggk@gmail.com")
c1.addBill(bill: m1, billID: m1.billID)
c1.addBill(bill: i1, billID: i1.billID)
c1.addBill(bill: h1, billID: h1.billID)
//c1.display()

var c2 = Customer(customerID: 2, firstName: "Charmi", lastName: "Patel", emailID: "gadgkgkg@gmailcom")
c2.addBill(bill: i2, billID: i2.billID)
c2.addBill(bill: i3, billID: i3.billID)
c2.addBill(bill: m2, billID: m2.billID)
//c2.display()

var c3 = Customer(customerID: 3, firstName: "Shreya", lastName: "Vaghasiya", emailID: "utweiri@.com")
c3.addBill(bill: h2, billID: h2.billID)
//c3.display()

var c4 = Customer(customerID: 4, firstName: "Jyothi", lastName: "Thomas", emailID: "cxnbfjfgmail.com")
//c4.display()

var customers = [Int : Customer]()
customers.updateValue(c1, forKey: c1.customerID)
customers.updateValue(c2, forKey: c2.customerID)
customers.updateValue(c3, forKey: c3.customerID)
customers.updateValue(c4, forKey: c4.customerID)

if customers.count==0
{
    print("There are not any customer yet")
}
else
{
    print("-------------------List Of Customers-------------------")
    for i in customers
    {
        print("\(i.key) : \(i.value.fullName)")
    }
}

func  getCustomerByID(id : Int)-> Customer?
{
    if let tempCustomer = customers[id]
    {
        return tempCustomer;
    }
    else
    {
        return nil
    }
}

print("*******************************************************")
print("-------------------------------------------------------")
//print("Enter Customer ID : ")
print("Enter Customer ID : ", separator: "", terminator: " ")
let customerID = Int(readLine() ?? "0")
print("-------------------------------------------------------")
if customerID != nil && customerID != 0
{
    if let tempCustomer = getCustomerByID(id: customerID!)
    {
        tempCustomer.display()
        print("-------------------------------------------------------")
    }
    else
    {
        print("Customer with ID \(String(describing: customerID)) doesn't exist")
        print("-------------------------------------------------------")
    }
}
else
{
    print("Customer ID should be valid number only and strats from 1")
    print("-------------------------------------------------------")
}

