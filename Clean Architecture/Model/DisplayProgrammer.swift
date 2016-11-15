//
//  DisplayProgrammer.swift
//  Clean Architecture
//
//  Created by Robert-Hein Hooijmans on 14/11/16.
//  Copyright © 2016 Robert-Hein Hooijmans. All rights reserved.
//

import Foundation

struct DisplayProgrammer {
    let name: String
    let interviewDate: Date
    let isFavorite: Bool
    
    init(programmer: Programmer) {
        name = programmer.name
        interviewDate = programmer.interviewDate
        isFavorite = programmer.isFavorite
    }
}
