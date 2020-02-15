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
    
    func units() -> String
    {
        let s = String.init(format: "%d Units", self)
        return s
    }
}



extension Date
{
    public func getForamttedDate() -> String
    {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "EEEE, dd MMMM, yyyy"
        let formattedDate = dateFormatterPrint.string(from: self)
        return formattedDate
    }
    
    static func from(year: Int, month: Int, day: Int) -> Date?
    {
        let calendar = Calendar(identifier: .gregorian)
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        return calendar.date(from: dateComponents) ?? nil
    }
}

