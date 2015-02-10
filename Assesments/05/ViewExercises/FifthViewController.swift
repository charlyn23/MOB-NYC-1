//
//  FifthViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class FifthViewController: ExerciseViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 5"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Create a green button with a red border that says ‘Tap me!’ (50px by 50px), center it in the middle of the screen.
        Once tapped, the button should animate up 20 pixels and turn red, then immediately back down 20 pixels and turn back to green. It should not be clickable while animating.
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
        autoLayout()
    }
    
    
    func autoLayout() {
        
        var tapMeButton = UIButton()
      //  tapMeButton.titleLabel = UIFont.systemFontOfSize(12)
        tapMeButton.titleLabel?.text = "Tap me"
        
       // var exerciseView = UIView()
        
        
        self.view.addSubview(exerciseView)
        exerciseView.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        self.exerciseView.addSubview(tapMeButton)
        tapMeButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        tapMeButton.backgroundColor = UIColor.greenColor()
        tapMeButton.layer.borderWidth = 2
        var currentTitle: String? {  return "Tap me" }
        
      //  let button = UIButton.buttonWithType(.System) as UIButton
       // button.titleLabel.font = UIFont.systemFontOfSize(12)
      //  button.titleLabel.lineBreakMode = .ByTruncatingTail
        
        
        
        //tapMeButton.layer.borderColor = UIColor.redColor(
        
        

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
        
        exerciseView.layer.borderWidth = 2
        
        //BUTTON
        view.addConstraint(NSLayoutConstraint(
            item: tapMeButton,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))
        view.addConstraint(NSLayoutConstraint(
            item: tapMeButton,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))
        view.addConstraint(NSLayoutConstraint(
            item: tapMeButton,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0))
        view.addConstraint(NSLayoutConstraint(
            item: tapMeButton,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: exerciseView,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
        
        //SWIPE
//        view.addConstraint(NSLayoutConstraint(
//            item: swipe,
//            attribute: .Top,
//            relatedBy: .Equal,
//            toItem: exerciseView,
//            attribute: .Top,
//            multiplier: 1.0,
//            constant: 0))
//        view.addConstraint(NSLayoutConstraint(
//            item: swipe,
//            attribute: .Left,
//            relatedBy: .Equal,
//            toItem: exerciseView,
//            attribute: .Left,
//            multiplier: 1.0,
//            constant: 0))
//        view.addConstraint(NSLayoutConstraint(
//            item: swipe,
//            attribute: .Right,
//            relatedBy: .Equal,
//            toItem: exerciseView,
//            attribute: .Right,
//            multiplier: 1.0,
//            constant: 0))
//        view.addConstraint(NSLayoutConstraint(
//            item: swipe,
//            attribute: .Bottom,
//            relatedBy: .Equal,
//            toItem: exerciseView,
//            attribute: .Bottom,
//            multiplier: 1.0,
//            constant: 0))
    }
        
        //Button Animation: up 20+ turn red, then back down +  turn green
        
        
    tapMeButton.addTarget(self, action: Selector("widgetTapped:"), forControlEvents: UIControlEvents.TouchUpInside)
}

func tapMeButtonTapped(sender: UIButton) {
    animateTapMeButton()
}
//
//func animateTapMeButton() {
//    tapMeButtonIsHome = !tapMeButtonIsHome
//    UIView.animateWithDuration(0.5, animations: {
//        self.toggleTapMeButtonColor()
//        self.moveWidget()
//    })
//}
//
//func toggleWidgetColor() {
//    if widgetIsHome {
//        widget.backgroundColor = UIColor.greenColor()
//    } else {
//        widget.backgroundColor = UIColor.whiteColor()
//    }
//}
//
//func moveWidget() {
//    if widgetIsHome {
//        topWidgetConstraint?.constant = widgetHomeSpacing
//    } else {
//        topWidgetConstraint?.constant = widgetAwaySpacing
//    }
//    widget.layoutIfNeeded()
//}



    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    func next() {
        self.performSegueWithIdentifier("six", sender: nil)
    }

}
