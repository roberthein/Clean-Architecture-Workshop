//
//  ProgrammersProvider.swift
//  Clean Architecture
//
//  Created by Robert-Hein Hooijmans on 14/11/16.
//  Copyright © 2016 Robert-Hein Hooijmans. All rights reserved.
//

import Foundation

class ProgrammersProvider {
    
    let gateway: ProgrammersGateway
    var presenter: ProgrammersPresenter?
    
    init(with gateway: ProgrammersGateway) {
        self.gateway = gateway
    }
    
    func provideProgrammers() {
        let data = gateway.fetchProgrammers()
        let programmers = data.map(DisplayProgrammer.init)
        presenter?.present(programmers)
    }
}
