//
//  ModalDismiss.swift
//  Lesson03
//
//  Created by Charlyn Buchanan on 1/21/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit
class DismissSegue: UIStoryboardSegue {
    if let controller = sourceViewController.presentingViewController? {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
}
