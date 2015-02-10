//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {
    
    var boxOne = UIView()
    var boxTwo = UIView()
    var boxThree = UIView()
    var boxFour = UIView()
    
    func positionBoxes() {
        let secondViewControllerNavBar = navigationController?.navigationBar.frame ?? CGRectZero
        let bottomNavBarFrame = navigationController?.navigationBar.frame ?? CGRectZero
        let exerciseView = UIViewController()
        let viewMaxY = super.view.bounds.size.height
        let viewMaxX = super.view.bounds.size.width
        
        let topBoxY = CGRectGetMaxY(secondViewControllerNavBar)
        boxOne.frame = CGRect(x: 0, y: topBoxY, width: 20, height: 20)
        boxTwo.frame = CGRect(x: viewMaxX - 20, y: topBoxY, width: 20, height: 20)
        boxThree.frame = CGRect(x: 0, y: viewMaxY - 64, width: 20, height: 20)
        boxFour.frame = CGRect(x: viewMaxX - 20, y: viewMaxY - 63, width: 20, height: 20)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        
        positionBoxes()
        
        boxOne.backgroundColor = UIColor.blueColor()
        self.exerciseView.addSubview(boxOne)
        
        boxTwo.backgroundColor = UIColor.blueColor()
        self.exerciseView.addSubview(boxTwo)
        
        boxThree.backgroundColor = UIColor.blueColor()
        self.exerciseView.addSubview(boxThree)
        
        boxFour.backgroundColor = UIColor.blueColor()
        self.exerciseView.addSubview(boxFour)
        
        
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen.
        They must stay in their respective corners on device rotation.
        
        
        
        Use Springs & Struts.
        
        Your view should be in self.exerciseView, not self.view
        */
    }
    override func didRotateFromInterfaceOrientation(interfaceOrientation: UIInterfaceOrientation) {
        positionBoxes()
    }
   // @IBOutlet var secondViewContollerNavBar: UIView!
    
    override func shouldAutorotate() -> Bool {
        
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
}
