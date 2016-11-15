//
//  ProgrammersList.swift
//  Clean Architecture
//
//  Created by Robert-Hein Hooijmans on 14/11/16.
//  Copyright © 2016 Robert-Hein Hooijmans. All rights reserved.
//

import Foundation
import UIKit

class ProgrammersList {
    
    fileprivate var programmers: [DisplayProgrammer] = []
    let provider: ProgrammersProvider
    
    init(with provider: ProgrammersProvider) {
        self.provider = provider
    }
    
    func viewDidLoad() {
        provider.provideProgrammers()
    }
    
    var numberOfItems: Int {
        return programmers.count
    }
    
    func configure(view: ProgrammerCell, at index: Int) {
        let programmer = programmers[index]
        view.display(name: programmer.name)
        view.display(date: programmer.interviewDate.relative())
        view.display(favorite: programmer.isFavorite)
    }
}

extension ProgrammersList: ProgrammersPresenter {
    
    func present(_ programmers: [DisplayProgrammer]) {
        self.programmers = programmers
    }
}
