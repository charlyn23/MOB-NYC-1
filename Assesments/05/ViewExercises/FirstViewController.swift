//
//  FirstViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class FirstViewController: ExerciseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 1"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        
        let navBarFrame = navigationController?.navigationBar.frame ?? CGRectZero
        
        let exerciseView = UIViewController()
        let viewMaxY = super.view.bounds.size.height
        
                let outerBlackBox = UIView(frame: CGRect(x: 0, y: CGRectGetMaxY(navBarFrame), width: view.frame.size.width, height: 15))
        outerBlackBox.backgroundColor = UIColor.blackColor()
        self.exerciseView.addSubview(outerBlackBox)
        
        let innerRedBox = UIView(frame: CGRect(x: 0, y: 2.5, width: view.frame.size.width, height: 10))
        innerRedBox.backgroundColor = UIColor.redColor()
        outerBlackBox.addSubview(innerRedBox)
        
        
        
        let outerRedBox = UIView(frame: CGRect(x: 0, y: viewMaxY - 59, width: view.frame.size.width, height: 15))
       outerRedBox.backgroundColor = UIColor.redColor()
       self.exerciseView.addSubview(outerRedBox)
        
        let innerBlackBox = UIView(frame: CGRect(x: 0, y: 2.5, width: view.frame.size.width, height: 10))
        innerBlackBox.backgroundColor = UIColor.blackColor()
        outerRedBox.addSubview(innerBlackBox)
        
        
    
        
        /* TODO:
        Create a red box (10px tall, the width of the screen) with a black border on the very top of the screen below the nav bar,
        and a black box with a red border on the very bottom of the screen (same dimensions), above the toolbar.
        
        Use Springs & Struts.
        
        Your view should be in self.exerciseView, not self.view
        */
    }
    
    @IBOutlet weak var firstViewControllerNavigationBar: UINavigationItem!
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Portrait.rawValue)
    }
    
    func next() {
        self.performSegueWithIdentifier("two", sender: nil)
    }
}
