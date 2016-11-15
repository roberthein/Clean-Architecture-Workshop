//
//  Repository.swift
//  Clean Architecture
//
//  Created by Robert-Hein Hooijmans on 14/11/16.
//  Copyright © 2016 Robert-Hein Hooijmans. All rights reserved.
//

import Foundation

class Repository: ProgrammersGateway {
    
    var programmers: [Programmer] {
        return [
            Programmer(name: "Thomas", emacs: 0, caffeine: 1, rating: 10, interviewDate: Date(), isFavorite: false),
            Programmer(name: "Lars", emacs: 1, caffeine: 2, rating: 20, interviewDate: Date(), isFavorite: false),
            Programmer(name: "Maurice", emacs: 1, caffeine: 3, rating: 30, interviewDate: Date(), isFavorite: true),
            Programmer(name: "Rick", emacs: 0, caffeine: 4, rating: 40, interviewDate: Date(), isFavorite: false)
        ]
    }
    
    func fetchProgrammers() -> [Programmer] {
        return programmers
    }
}
