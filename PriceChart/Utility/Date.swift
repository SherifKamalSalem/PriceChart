//
//  Date.swift
//  PriceChart
//
//  Created by Sherif Kamal on 26/08/2022.
//

import Foundation

extension Date {
    func yyyy_mm_dd() -> String {
        let year  = Calendar.current.component(.year, from: self)
        let month = Calendar.current.component(.month, from: self)
        let day   = Calendar.current.component(.day, from: self)
        return "\(year)/\(month)/\(day)"
    }
}
