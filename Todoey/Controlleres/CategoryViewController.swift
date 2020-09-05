//
//  CategoryViewController.swift
//  Todoey
//
//  Created by Alex 6.1 on 9/4/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit
import CoreData

class CategoryViewController: UITableViewController {
    
    var categoryArray = [Category]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - TABLEVIEW DATASOURCE METHODS
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        
        let category = categoryArray[indexPath.row]
        cell.textLabel?.text = category.name
        return cell
    }
    
    //MARK: - DATA MANIPULATIONS METHODS
    
    
    //MARK: - ADD NEW CATEGORIES
    

    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
    }
    

    //MARK: - TABLEVIEW DELEGATE METHODS
    
    
    
}
