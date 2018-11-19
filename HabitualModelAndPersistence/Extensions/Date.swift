//
//  Date.swift
//  HabitualModelAndPersistence
//
//  Created by Noah Woodward on 11/19/18.
//  Copyright © 2018 Noah Woodward. All rights reserved.
//

import Foundation

extension Date {
    
    var stringValue: String {
        return DateFormatter.localizedString(from: self, dateStyle: .medium, timeStyle: .none)
    }
    
    var isToday: Bool {
        let calendar = Calendar.current
        return calendar.isDateInToday(self)
    }
    
    var isYesterday: Bool {
        let calendar = Calendar.current
        return calendar.isDateInYesterday(self)
    }
    
    
}
