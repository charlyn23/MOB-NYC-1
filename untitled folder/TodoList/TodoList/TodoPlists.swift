//
//  ViewController.swift
//  TodoList
//
//  Created by Charlyn Buchanan on 2/23/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import UIKit

class TodoPlists: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            var cell = tableView.dequeReusableCellWithIdentifier("myCell") as UITableViewCell!
            if cell == nil {
                cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
            }
        
        cell.texLabel?.text = self.items[indexPath.row]
        return cell
            
            func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return self.items.count
            }
    
        var stringAtSpecifiedIndex = self.items[indexPath.row]
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

