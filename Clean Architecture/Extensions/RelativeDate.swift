//
//  RelativeDate.swift
//  Clean Architecture
//
//  Created by Robert-Hein Hooijmans on 14/11/16.
//  Copyright © 2016 Robert-Hein Hooijmans. All rights reserved.
//

import Foundation

extension Date {
    
    func relative(from date: Date = Date()) -> String {
        return self.description
    }
}
