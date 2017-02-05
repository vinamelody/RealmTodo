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
    
    var taskId: String?
    
    fileprivate func updateTask(checked: Bool) {
        if let realm = try? Realm(), let id = self.taskId, let task = realm.object(ofType: Task.self, forPrimaryKey: id) {
            
            try! realm.write {
                task.done = checked
            }
            
            checkButton.isSelected = task.done
        }
    }
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        print("checked to \(!checkButton.isSelected)")
        updateTask(checked: !checkButton.isSelected)
    }
    
    func configureWithTask(_ task: Task) {
        taskId = task.taskId
        checkButton.isSelected = task.done
        title.text = task.title
        priority.text = task.priorityText
        priority.textColor = task.priorityColor
        
    }
    override func awakeFromNib() {
        
    }
}
