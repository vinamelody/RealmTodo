//
//  TasksTableViewController.swift
//  RealmTodo
//
//  Created by Vina Melody on 2/2/17.
//  Copyright © 2017 Vina Melody. All rights reserved.
//

import UIKit
import RealmSwift

class TasksTableViewController: UITableViewController {
    
    @IBOutlet weak var filterToggle: UIBarButtonItem!
    
    var tasks: Results<Task>!
    
    override func viewDidLoad() {
        let realm = try! Realm()
        tasks = realm.objects(Task)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    @IBAction func filterToggleTapped(_ sender: UIBarButtonItem) {
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let task = tasks[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") as! TaskCell
        cell.title.text = task.title
        cell.priority.text = task.priorityText
        cell.priority.textColor = task.priorityColor
        return cell
    }
    
}
