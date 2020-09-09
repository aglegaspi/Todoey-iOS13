//
//  SwipeTableViewController.swift
//  Todoey
//
//  Created by Alex 6.1 on 9/7/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {
    
   // typealias ResultObjecets = [Category,Item]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80.0
    }
    
    // TABLE VIEW DATASOURCE METHODS
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        // what should happen when a use swipes a cell
        
        guard orientation == .right else { return nil } // checek for the orientation of the cell swipes from the right

        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            
            self.updateModel(at: indexPath)
            
        }
        deleteAction.image = UIImage(named: "delete-icon")

        return [deleteAction]
    }
    
    func updateModel(at indexPath: IndexPath) {
        //update our data model
        
    }

    
}
