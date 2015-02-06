//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//
//TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
//TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
//TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.

import UIKit

class MapViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var keyTextField: UITextField!
    
    @IBOutlet weak var valueTextField: UITextField!
    
    
    @IBOutlet weak var dictionaryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyTextField.delegate = self
        valueTextField.delegate = self

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)

        
    }
    func keyboardWillShow(notification: NSNotification) {
        keyTextField.backgroundColor = UIColor.blueColor()
        valueTextField.backgroundColor = UIColor.blueColor()
        
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    var babyAnimalsDictionary = ["Dog":"Puppy", "Cat":"Kitten", "Kangaroo":"Joey"]
    var babyAnimalsDictionaryKeys: [String] {
        get {
            return sorted(babyAnimalsDictionary.keys)
        }
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return babyAnimalsDictionaryKeys.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "Cell")
        let key = babyAnimalsDictionaryKeys[indexPath.row]
        if let value = babyAnimalsDictionary[key] {
            cell.textLabel?.text = key
            cell.detailTextLabel?.text = value
        }
        return cell
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        babyAnimalsDictionary[keyTextField.text] = "\(valueTextField.text)"
        self.view.endEditing(true);
        keyTextField.backgroundColor = UIColor.redColor()
        valueTextField.backgroundColor = UIColor.redColor()
        println(babyAnimalsDictionary)
        dictionaryTableView.reloadData()
                NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
        if keyTextField == textField {
            valueTextField.becomeFirstResponder()
        } else if valueTextField == textField {
            let key = keyTextField.text
            let value = valueTextField.text
            
            if key.isEmpty || value.isEmpty {
                return false
            }
            
        }
        return true

    }
}