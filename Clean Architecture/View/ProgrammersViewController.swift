//
//  ProgrammersViewController.swift
//  Clean Architecture
//
//  Created by Robert-Hein Hooijmans on 14/11/16.
//  Copyright © 2016 Robert-Hein Hooijmans. All rights reserved.
//

import Foundation
import UIKit

class ProgrammersViewController: UITableViewController {
    
    var presenter: ProgrammersList?
    let identifier = "ProgrammerCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        
        tableView.register(ProgrammerTableViewCell.self, forCellReuseIdentifier: identifier)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.numberOfItems ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! ProgrammerTableViewCell
        presenter?.configure(view: cell, at: indexPath.row)
        return cell
    }
}
