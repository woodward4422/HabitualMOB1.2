//
//  Habit.swift
//  HabitualModelAndPersistence
//
//  Created by Noah Woodward on 11/19/18.
//  Copyright © 2018 Noah Woodward. All rights reserved.
//

import Foundation
import UIKit

struct Habit: Codable {
    var title: String
    let dateCreated: Date = Date()
    let selectedImage: Habit.Images
    var currentStreak: Int = 0
    var bestStreak: Int = 0
    var lastCompletionDate: Date?
    var numberOfCompletions: Int = 0
    
    var hasCompletedForToday: Bool{
        return lastCompletionDate?.isToday ?? false
    }
    
    enum Images: Int, CaseIterable, Codable {
        case book
        case bulb
        case clock
        case code
        case drop
        case food
        case grow
        case gym
        case heart
        case lotus
        case other
        case pet
        case pill
        case search
        case sleep
        case tooth
        
        var image: UIImage {
            guard let image = UIImage(named: String(describing: self)) else {
                fatalError("image \(self) not found")
            }
            
            return image
        }
    }
    
    init(title: String,image: Habit.Images) {
        self.title = title
        self.selectedImage = image
    }
    
}
