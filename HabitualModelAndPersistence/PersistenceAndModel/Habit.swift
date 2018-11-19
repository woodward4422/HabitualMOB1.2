//
//  Habit.swift
//  HabitualModelAndPersistence
//
//  Created by Noah Woodward on 11/19/18.
//  Copyright © 2018 Noah Woodward. All rights reserved.
//

import Foundation
import UIKit

struct Habit {
    var title: String
    let dateCreated: Date
    let selectedImage: UIImage
    var currentStreak: Int
    var bestStreak: Int
    var lastCompletionDate: Date?
    var numberOfCompletions: Int
    
    var hasCompletedForToday: Bool{
        return lastCompletionDate?.isToday ?? false
    }
    
}
