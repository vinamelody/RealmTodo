//
//  TasksTableViewController.swift
//  RealmTodo
//
//  Created by Vina Melody on 2/2/17.
//  Copyright © 2017 Vina Melody. All rights reserved.
//

import UIKit

class TasksTableViewController: UITableViewController {
    
    @IBOutlet weak var filterToggle: UIBarButtonItem!
    
    var tasks = [String]()
    
    
    @IBAction func filterToggleTapped(_ sender: UIBarButtonItem) {
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") as! TaskCell
        return cell
    }
    
}
