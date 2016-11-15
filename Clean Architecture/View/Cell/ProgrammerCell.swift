//
//  ProgrammerCell.swift
//  Clean Architecture
//
//  Created by Robert-Hein Hooijmans on 14/11/16.
//  Copyright © 2016 Robert-Hein Hooijmans. All rights reserved.
//

import Foundation

protocol ProgrammerCell {
    func display(name: String)
    func display(date: String)
    func display(favorite: Bool)
}
