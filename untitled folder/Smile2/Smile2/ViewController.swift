//
//  ViewController.swift
//  Smile2
//
//  Created by Charlyn Buchanan on 2/4/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        autolayout()
    }
    
    func autolayout() {
        var leftEye = UIView()
        var rightEye = UIView()
        leftEye.setTranslatesAutoresizingMaskIntoConstraints(false)
        rightEye.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(leftEye)
        view.addSubview(rightEye)
        leftEye.backgroundColor = UIColor.redColor()
        rightEye.backgroundColor = UIColor.blueColor()
        
        view.addConstraint(NSLayoutConstraint(
            item: leftEye,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Top,
            multiplier: 1.0,
            constant: 50))
        view.addConstraint(NSLayoutConstraint(
            item: leftEye,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Right,
            multiplier: 0.25,
            constant: -25))
        view.addConstraint(NSLayoutConstraint(
            item: leftEye,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))
        view.addConstraint(NSLayoutConstraint(
            item: leftEye,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))
        
        //////////RIGHT EYE
        view.addConstraint(NSLayoutConstraint(
            item: rightEye,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Top,
            multiplier: 1.0,
            constant: 50))
        view.addConstraint(NSLayoutConstraint(
            item: rightEye,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Left,
            multiplier: 1,
            constant: 0.25))
        view.addConstraint(NSLayoutConstraint(
            item: rightEye,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))
        view.addConstraint(NSLayoutConstraint(
            item: rightEye,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50))

       // leftEye.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "didTap"))
    }
    
        
        
        
}






