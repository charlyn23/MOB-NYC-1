//
//  ViewController.swift
//  Test
//
//  Created by Rudd Taylor on 1/14/15.
//  Copyright (c) 2015 GA. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    let teachers = ["Rudd", "Travis", "Sean"]
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teachers.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = teachers[indexPath.row]
        return cell
    }
    
<<<<<<< HEAD
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indesPath: NSIndexPath)
    {
        performSegueWithIdentifier("ourAmazingSegue", sender: nil)
=======
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
>>>>>>> 55f1a21b75189d5e8f480a4ac1c25e16da6ea937
    }
}

