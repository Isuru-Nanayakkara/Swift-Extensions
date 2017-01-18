//
//  Date+Extensions.swift
//  Swift+Extensions
//
//  Created by Isuru Nanayakkara on 1/17/17.
//  Copyright © 2017 BitInvent. All rights reserved.
//

import Foundation

extension Date {
    
    var isToday: Bool {
        let calendar = Calendar.autoupdatingCurrent
        let selfComponents = calendar.dateComponents([.year, .month, .day], from: self)
        let otherDateComponents = calendar.dateComponents([.year, .month, .day], from: Date())
        return selfComponents.year == otherDateComponents.year && selfComponents.month == otherDateComponents.month && selfComponents.day == otherDateComponents.day
    }
    
    var isYesterday: Bool {
        let calendar = Calendar.autoupdatingCurrent
        let yesterday = calendar.date(byAdding: .day, value: 1, to: Date()) ?? self
        return yesterday.isToday
    }
    
}
