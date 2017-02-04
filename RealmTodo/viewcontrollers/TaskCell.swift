//
//  TaskCell.swift
//  RealmTodo
//
//  Created by Vina Melody on 4/2/17.
//  Copyright © 2017 Vina Melody. All rights reserved.
//

import UIKit
import RealmSwift

class TaskCell: UITableViewCell {
    
    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var priority: UILabel!
    
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
    }
    
    override func awakeFromNib() {
        
    }
}
