//
//  ViewController.swift
//  ToDo
//
//  Created by Charlyn Buchanan on 1/21/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var textField: UITextField!
    var todoViewController: MainTableViewController?
    
    @IBAction func addButton(sender: AnyObject) {
        todoViewController?.todos.append(textField.text)
    
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




}