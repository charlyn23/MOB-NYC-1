//
//  ViewController.swift
//  Smile
//
//  Created by Charlyn Buchanan on 2/4/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func autolayout() {
            var leftEye = UIView()
            var rightEye = UIView()
            leftEye.setTranslatesAutoresizingMaskIntoConstraints(false)
            rightEye.setTranslatesAutoresizingMaskIntoConstraints(false)
            
            view.addSubview(leftEye)
            view.addSubview(rightEye)
            
            view.addConstraint(NSLayoutConstraint(
                item: leftEye,
                attribute: NSLayoutAttribute.Left,
                relatedBy: NSLayoutRelation.Equal,
                toItem: view,
                attribute: NSLayoutAttribute.Left,
                multiplier: 1.0, constant: 0))
            view.addConstraint(NSLayoutConstraint(
                item: leftEye,
                attribute: NSLayoutAttribute.Top,
                relatedBy: NSLayoutRelation.Equal,
                toItem: view,
                attribute: NSLayoutAttribute.Top,
                multiplier: 1.0,
                constant: 0))
            view.addConstraint(NSLayoutConstraint(
                item: leftEye,
                attribute: NSLayoutAttribute.Width,
                relatedBy: NSLayoutRelation.Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.NotAnAttribute,
                multiplier: 1.0,
                constant: 50))
            view.addConstraint(NSLayoutConstraint(
                item: leftEye,
                attribute: NSLayoutAttribute.Height,
                relatedBy: NSLayoutRelation.Equal,
                toItem: nil,
                attribute: NSLayoutAttribute.NotAnAttribute,
                multiplier: 1.0,
                constant: 50))
            
            view.addSubview(leftEye)
            leftEye.backgroundColor = UIColor.redColor()
            
        }
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func springsAndStrutsLayout() {
        let topMargin: CGFloat = 50
        let size: CGFloat = 15
        var leftEye = UIView(frame: CGRect(x: self.view.frame.size.width/4, y: topMargin, width: size, height: size))
        
        let rightEyeRect = CGRect(x: self.view.frame.size.width * 0.75, y: topMargin, width: size, height: size)
        var rightEye = UIView(frame: rightEyeRect)
        leftEye.backgroundColor = UIColor.purpleColor()
        rightEye.backgroundColor = UIColor.orangeColor()
        
        leftEye.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleWidth
        rightEye.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleWidth
        
        view.addSubview(rightEye)
        view.addSubview(leftEye)
        
        let noseTopMargin: CGFloat = 200
        var nose = UIView(frame: CGRect(x: self.view.frame.width/2 - 7.5, y: noseTopMargin, width: 15, height: 30))
        view.addSubview(nose)
        nose.backgroundColor = UIColor.blueColor()
        
        nose.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleLeftMargin
        
        let mouthTopMargin: CGFloat = 300
        var mouth = UIView(frame: CGRect(x: self.view.frame.width/2 - 150, y: mouthTopMargin, width: 300, height: 15))
        
        view.addSubview(mouth)
        mouth.backgroundColor = UIColor.purpleColor()
        mouth.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleLeftMargin
        

    }

}

