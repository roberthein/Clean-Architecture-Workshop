//
//  Cell.swift
//  Clean Architecture
//
//  Created by Robert-Hein Hooijmans on 14/11/16.
//  Copyright © 2016 Robert-Hein Hooijmans. All rights reserved.
//

import Foundation
import UIKit

class ProgrammerTableViewCell: UITableViewCell {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        tintColor = .black
    }
}

extension ProgrammerTableViewCell: ProgrammerCell {
    
    func display(name: String) {
        textLabel?.text = name
    }
    
    func display(date: String) {
        detailTextLabel?.text = date
    }
    
    func display(favorite: Bool) {
        textLabel?.textColor = favorite ? .black : .lightGray
        detailTextLabel?.textColor = favorite ? .gray : .lightGray
        accessoryType = favorite ? .checkmark : .none
    }
}
