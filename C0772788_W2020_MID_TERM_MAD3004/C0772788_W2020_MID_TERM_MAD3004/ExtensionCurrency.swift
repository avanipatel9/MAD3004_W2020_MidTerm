//
//  ExtensionCurrency.swift
//  C0772788_W2020_MID_TERM_MAD3004
//
//  Created by Avani Patel on 2/14/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation

extension Double
{
    func currency() -> String
    {
        let s = String.init(format: "$%.2f", self)
        return s
    }
    
    func internetData() -> String {
        let s = String.init(format: "%.0f GB", self)
        return s
    }
    
}

extension Int
{
    func minutes() -> String
    {
        let s = String.init(format: "%d Minutes", self)
        return s
    }
}

extension Date
{
//    func dateFormatter() -> Date
//    {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "EEEE, dd MM, yyyy"
//        if let date = formatter.date(from: String(self))
//        {
//          print(date)
//        }
//    }
}

