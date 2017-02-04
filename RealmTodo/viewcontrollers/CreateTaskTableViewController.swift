//
//  CreateTaskTableViewController.swift
//  RealmTodo
//
//  Created by Vina Melody on 2/2/17.
//  Copyright © 2017 Vina Melody. All rights reserved.
//

import UIKit


class CreateTaskTableViewController: UITableViewController {
    
    @IBOutlet weak var taskTitle: UITextField!
    @IBOutlet weak var taskPriority: UISegmentedControl!
    @IBOutlet weak var taskUsers: UISegmentedControl!
    
    @IBAction func createTask(_ sender: Any) {
        navigationController!.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        taskTitle.becomeFirstResponder()
    }
}
