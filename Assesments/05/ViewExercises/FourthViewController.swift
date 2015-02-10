//
//  FourthViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class FourthViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 4"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        autolayout()
        enum UIScrollViewIndicatorStyle : Int {
            
            case Default
        }
        /* TODO:
        Build a scroll view that takes up the entire screen. 
        
        In the scroll view, place a blue box at the top (20px high, 10px horizontal margins with the screen, a very tall (1000+px, width the same as the screen) purple label containing white text in the middle, and a red box at the bottom (20px high, 10px horizontal margins with the screen). The scroll view should scroll the entire height of the content.
        
        Use Autolayout.

        
        Your view should be in self.exerciseView, not self.view.
        */
        
    }
    
    func autolayout() {
        
        var scrollView = UIScrollView()
        self.view.addSubview(scrollView)
        scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
        //scrollView.frame = self.view.frame
        
        var blueBox = UIView()
        self.exerciseView.addSubview(blueBox)
        blueBox.setTranslatesAutoresizingMaskIntoConstraints(false)
        blueBox.backgroundColor = UIColor.blueColor()
        
        self.view.addSubview(exerciseView)
        exerciseView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        var purpleLabel = UILabel()
        self.exerciseView.addSubview(purpleLabel)
        purpleLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        purpleLabel.backgroundColor = UIColor.purpleColor()
        purpleLabel.text = "White Text"
        purpleLabel.textColor = UIColor.whiteColor()
        
        
        //EXERCISE VIEW
        view.addConstraint(NSLayoutConstraint(
            item: exerciseView,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: topLayoutGuide,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 0.0))
        view.addConstraint(NSLayoutConstraint(
            item: exerciseView,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Left,
            multiplier: 1.0,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: exerciseView,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Right,
            multiplier: 1.0,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: exerciseView,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: -44))
        
        //SCROLL VIEW
        view.addConstraint(NSLayoutConstraint(
            item: scrollView,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Top,
            multiplier: 1.0,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: scrollView,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Left,
            multiplier: 1.0,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: scrollView,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: scrollView,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Right,
            multiplier: 1.0,
            constant: 0))

        
        //exerciseView.layer.borderWidth = 2
        
        
     //BLUE BOX
        view.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: scrollView,
            attribute: .Top,
            multiplier: 1.0,
            constant: 0.0))
        view.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20))
        view.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: scrollView,
            attribute: .Width,
            multiplier: 1.0,
            constant: -20))
        view.addConstraint(NSLayoutConstraint(
            item: blueBox,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: scrollView,
            attribute: .Left,
            multiplier: 0.5,
            constant: 10))
        
        //PURPLE LABEL
        view.addConstraint(NSLayoutConstraint(
            item: purpleLabel,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: scrollView,
            attribute: .Left,
            multiplier: 1.0,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: purpleLabel,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: blueBox,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: purpleLabel,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Right,
            multiplier: 1.0,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: purpleLabel,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 1000))
    }
    
    
    
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    func next() {
        self.performSegueWithIdentifier("five", sender: nil)
    }

}
