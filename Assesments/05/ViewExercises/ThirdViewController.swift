//
//  ThirdViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class ThirdViewController: ExerciseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 3"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        autoLayout()
        
        
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen.
        They must stay in their respective corners on device rotation.
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
    }
    
    func autoLayout() {
        var boxOne = UIView()
        var boxTwo = UIView()
        var boxThree = UIView()
        var boxFour = UIView()
        
        self.view.addSubview(exerciseView)
        exerciseView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.exerciseView.addSubview(boxOne)
        boxOne.backgroundColor = UIColor.blueColor()
        boxOne.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.exerciseView.addSubview(boxTwo)
        boxTwo.backgroundColor = UIColor.blueColor()
        boxTwo.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.exerciseView.addSubview(boxThree)
        boxThree.backgroundColor = UIColor.blueColor()
        boxThree.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.exerciseView.addSubview(boxFour)
        boxFour.backgroundColor = UIColor.blueColor()
        boxFour.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        //EXERCISE VIEW
        self.view.addConstraint(NSLayoutConstraint(
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
        
        exerciseView.layer.borderWidth = 2
        
        //BOX ONE//
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxOne,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Top,
            multiplier: 1.0,
            constant: 0))
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxOne,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Left,
            multiplier: 1.0,
            constant: 0))
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxOne,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20))
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxOne,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20))
        
        //BOX TWO
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxTwo,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Top,
            multiplier: 1.0,
            constant: 0.0))
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxTwo,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Right,
            multiplier: 1.0,
            constant: 0.0))
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxTwo,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20.0))
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxTwo,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20.0))
        
        //BOX THREE
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxThree,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Left,
            multiplier: 1.0,
            constant: 0.0))
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxThree,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 0.0))
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxThree,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20.0))
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxThree,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20.0))
        
        //BOX FOUR
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxFour,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Right,
            multiplier: 1.0,
            constant: 0.0))
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxFour,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 0.0))
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxFour,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20.0))
        exerciseView.addConstraint(NSLayoutConstraint(
            item: boxFour,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 20.0))
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("four", sender: nil)
    }
    
}
