//
//  ViewController.swift
//  Todoey
//
//  Created by Игорь on 20.08.2018.
//  Copyright © 2018 Igor Podosonov. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var itemArray = ["Do thing one", "Do thing two", "Do thing three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: TableView Datasource methods
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //MARK: TableView Delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let currentCell = tableView.cellForRow(at: indexPath)
        
        if currentCell?.accessoryType == .checkmark {
            currentCell?.accessoryType = .none
        } else {
            currentCell?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

