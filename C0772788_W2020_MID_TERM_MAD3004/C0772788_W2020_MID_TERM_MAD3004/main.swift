//
//  main.swift
//  C0772788_W2020_MID_TERM_MAD3004
//
//  Created by Avani Patel on 2/12/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

var m1 = Mobile(billID: "MOB001", billDate: Date(), billType: BillType.MOBILE, mobileManufacturerName: "Galaxy Samsung", planName: "Prepaid Talk + Text plan", mobileNumber: 6786768907, internetGBUsed: 5.0, minuteUsed: 356)
var i1 = Internet(billID: "NET001", billDate: Date(), billType: BillType.INTERNET, providerName: "Bell", internetGBUsed: 500.0)
var h1 = Hydro(billID: "HYD001", billDate: Date(), billType: BillType.HYDRO, agencyName: "Planet Energy", unitConsumed: 29)

var c1 = Customer(customerID: 1, firstName: "Avani", lastName: "Patel", emailID: "aghkggk@gmail.com")
var c2 = Customer(customerID: 2, firstName: "Charmi", lastName: "Patel", emailID: "gadgkgkg@gmail.com")
c1.addBill(bill: m1, billID: m1.billID)
c1.addBill(bill: i1, billID: i1.billID)
c1.addBill(bill: h1, billID: h1.billID)
c1.dispaly()
c2.dispaly()
