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

extension String
{
    func isValidEmail() -> Bool
    {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    func isValidPhone(phone : String) -> String {
        let PHONE_REGEX = "^(?:\\+?1[-.●]?)?\\(?([0-9]{3})\\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result = phoneTest.evaluate(with: phone)
        if result == false
        {
            return "Invalid Phone Number \(phone)"
        }
        else
        {
            return phone
        }
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

