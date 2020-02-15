//
//  main.swift
//  C0772788_W2020_MID_TERM_MAD3004
//
//  Created by Avani Patel on 2/12/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

var m1 = Mobile(billID: "MOB001", billDate: Date.from(year: 2019, month: 01, day: 20) ?? Date(), billType: BillType.MOBILE, mobileManufacturerName: "Galaxy Samsung", planName: "Prepaid Talk + Text plan", mobileNumber: 6786768907, internetGBUsed: 5.0, minuteUsed: 356)



var i1 = Internet(billID: "NET001", billDate: Date.from(year: 2018, month: 07, day: 29) ?? Date(), billType: BillType.INTERNET, providerName: "Bell", internetGBUsed: 500.0)
var i2 = Internet(billID: "NET002", billDate: Date.from(year: 2018, month: 12, day: 17) ?? Date(), billType: BillType.INTERNET, providerName: "Roger", internetGBUsed: 300)
var i3 = Internet(billID: "NET003", billDate: Date.from(year: 2020, month: 01, day: 31) ?? Date(), billType: BillType.INTERNET, providerName: "Bell", internetGBUsed: 250)

var h1 = Hydro(billID: "HYD001", billDate: Date.from(year: 2019, month: 04, day: 01) ?? Date(), billType: BillType.HYDRO, agencyName: "Planet Energy", unitConsumed: 29)
var h2 = Hydro(billID: "HYD002", billDate: Date.from(year: 2019, month: 10, day: 12) ?? Date(), billType: BillType.HYDRO, agencyName: "Planet Energy", unitConsumed: 50)


var c1 = Customer(customerID: 1, firstName: "Avani", lastName: "Patel", emailID: "aghkggk@gmail.com")
c1.addBill(bill: m1, billID: m1.billID)
c1.addBill(bill: i1, billID: i1.billID)
c1.addBill(bill: h1, billID: h1.billID)
c1.dispaly()

var c2 = Customer(customerID: 2, firstName: "Charmi", lastName: "Patel", emailID: "gadgkgkg@gmail.com")
c2.addBill(bill: i2, billID: i2.billID)
c2.addBill(bill: i3, billID: i3.billID)
c2.dispaly()

var c3 = Customer(customerID: 3, firstName: "Shreya", lastName: "Vaghasiya", emailID: "utweiri@gmail.com")
c3.addBill(bill: h2, billID: h2.billID)
c3.dispaly()

var c4 = Customer(customerID: 4, firstName: "Jyothi", lastName: "Thomas", emailID: "cxnbfjf@gmail.com")
c4.dispaly()

var customers = [Customer]()
customers.append(c1)
customers.append(c2)
customers.append(c3)
customers.append(c4)

if customers.count==0
{
    print("There are not any customer yet")
}
else
{
    print("---------------List Of Customers---------------")
    for i in customers
    {
        print("\(i.customerID) : \(i.fullName)")
    }
}

