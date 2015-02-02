//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    var groceryList = ["milk", "eggs", "cheese", "flour", "apples"]
    
    @IBOutlet weak var arrayEntryTextField: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayEntryTextField.delegate = self
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryList.count
    }
    
    @IBOutlet weak var groceryTableView: UITableView!
    func textFieldShouldReturn(textField: UITextField) -> Bool {
         var text = arrayEntryTextField.text
        groceryList.append(arrayEntryTextField.text)
        groceryTableView.reloadData()
        let tableViewHeight = groceryTableView.bounds.size.height
        let contentHeight = groceryTableView.contentSize.height
        let targetOffset = CGPoint(x: 0, y: contentHeight - tableViewHeight)
        groceryTableView.setContentOffset(targetOffset, animated: true)
        return true
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        cell.textLabel?.text = groceryList[indexPath.row]
        return cell
    }
    
        

        
        
        
//Accept textfield.text when did press returnKey
//        optional var enablesReturnKeyAutomatically: Bool { get set }
        
        
//Create func to change array (append?) by recieving textfield.text when return key is pressed

        
        
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text view when the return key is pressed. Add the string that was entered into the text view into an array of strings (stored in this class).
        
        TODO two: Make this class a UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        
        */
    
    }
