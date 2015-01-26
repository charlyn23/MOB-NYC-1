//
//  ModalViewController.swift
//  Lesson03
//
//  Created by Charlyn Buchanan on 1/22/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class ModalView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func didPressDismiss(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}




