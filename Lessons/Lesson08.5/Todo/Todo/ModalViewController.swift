//
//  ViewController.swift
//  Todo
//
//  Created by Rudd Taylor on 1/21/15.
//  Copyright (c) 2015 GA. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    
    var arrayOfDictionaries = [["Dylan":"Jan26"], ["Charlyn":"Oct23"], ["Sam":"July4"]]

    @IBOutlet weak var textField: UITextField!
    var todoViewController: MainTableViewController?
    
    
    
    @IBAction func didTapButton(sender: AnyObject) {
        var textEntered = textField.text
       //textField.text = (Key: String, Value: String)
        arrayOfDictionaries.append(textEntered)
        //todoViewController?.arrayOfDictionaries.append(textEntered)
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
//    
//    var notificationCenter = NSNotificationCenter.defaultCenter()
//
//    notificationCenter.addObserverForName("foo!", object: nil, queue: nil) {
//    (notification: NSNotification!) -> Void in
//    //THis code runs when "foo!" is posted
//    }
    
//Lets give the text field a delegate/////////
//    self.textField.delegate = self
    //We can also drag a delegate to the modal view controller, linking it. here, self refers to that specific instance of view controller
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

