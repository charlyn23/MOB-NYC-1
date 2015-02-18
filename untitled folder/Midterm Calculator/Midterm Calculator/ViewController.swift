//
//  ViewController.swift
//  Midterm Calculator
//
//  Created by Charlyn Buchanan on 2/10/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        autolayout()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func autolayout() {
        
        //Display Label
        var displayLabel = UILabel()
        self.view.addSubview(displayLabel)
        displayLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        displayLabel.backgroundColor = UIColor(red: 123/255, green: 145/255, blue: 156/255, alpha: 1.0)
        displayLabel.text = "0.0"
        displayLabel.textColor = UIColor.whiteColor()
        displayLabel.textAlignment = .Right
        displayLabel.font = UIFont.systemFontOfSize(70)
        var adjustsFontSizeToFitWidth: Bool
        //displayLabel.text.adjustsFontSizeToFitWidth = true
        
        self.view.addConstraint(NSLayoutConstraint(
            item: displayLabel,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Left,
            multiplier: 1.0,
            constant: 0))
        self.view.addConstraint(NSLayoutConstraint(
            item: displayLabel,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Right,
            multiplier: 1.0,
            constant: 0))
        self.view.addConstraint(NSLayoutConstraint(
            item: displayLabel,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Top,
            multiplier: 1.0,
            constant: 0))
        self.view.addConstraint(NSLayoutConstraint(
            item: displayLabel,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 100))
        
        //Button View
        var buttonView = UIView()
        buttonView.setTranslatesAutoresizingMaskIntoConstraints(false)
        buttonView.backgroundColor = UIColor.blackColor()
        buttonView.layer.borderWidth = 2
        self.view.addSubview(buttonView)
        self.view.addConstraint(NSLayoutConstraint(
            item: buttonView,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Left,
            multiplier: 1.0,
            constant: 0))
        self.view.addConstraint(NSLayoutConstraint(
            item: buttonView,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 0))
        self.view.addConstraint(NSLayoutConstraint(
            item: buttonView,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Right,
            multiplier: 1.0,
            constant: 0))
        self.view.addConstraint(NSLayoutConstraint(
            item: buttonView,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: displayLabel,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 0))
        
        //Buttons
        var one = UIButton()
        var two = UIButton()
        var three = UIButton()
        var four = UIButton()
        var five = UIButton()
        var six = UIButton()
        var seven = UIButton()
        var eight = UIButton()
        var nine = UIButton()
        var zero = UIButton()
        var point = UIButton()
        var equals = UIButton()
        var plus = UIButton()
        var minus = UIButton()
        var times = UIButton()
        var dividedBy  = UIButton()
        var percent = UIButton()
        var negation = UIButton()
        var clear = UIButton()
        var allClear = UIButton()
        
        var buttons = [one, two, three, four, five, six, seven, eight, nine, zero, point, equals, plus, minus, times, dividedBy, negation, percent, clear, allClear]
        
        for buttons in [one, two, three, four, five, six, seven, eight, nine, zero, point, equals, plus, minus, times, dividedBy, percent, negation, clear, allClear] {
            buttons.setTranslatesAutoresizingMaskIntoConstraints(false)
            buttons.layer.borderWidth = 6
            buttons.layer.cornerRadius = 25
            buttons.titleLabel!.font = UIFont (name: "Arial", size: 40)
            buttonView.addSubview(buttons)
            self.view.addConstraint(NSLayoutConstraint(
                item: buttons,
                attribute: .Height,
                relatedBy: .Equal,
                toItem: buttonView,
                attribute: .Height,
                multiplier: 0.2,
                constant: 0))
            self.view.addConstraint(NSLayoutConstraint(
                item: buttons,
                attribute: .Width,
                relatedBy: .Equal,
                toItem: buttonView,
                attribute: .Width,
                multiplier: 0.25,
                constant: 0))
            //var showsTouchWhenHighlighted: true
        }
        var numbers = [one, two, three, four, five, six, seven, eight, nine, zero, point, allClear]
        for numbers in [one, two, three, four, five, six, seven, eight, nine, zero, point, allClear] {
            numbers.backgroundColor = UIColor.grayColor()
        }
        var functions = [dividedBy, times, plus, minus, equals]
        for functions in [dividedBy, times, plus, minus, equals] {
            functions.backgroundColor = UIColor(red:75/255, green:106/255,blue:122/255,alpha:1.0)
        }
        var secondaryFunctions = [clear, percent, negation]
        for secondaryFunctions in [clear, percent, negation] {
            secondaryFunctions.backgroundColor = UIColor.lightGrayColor()
        }
        
        let rowOne = [clear, negation, percent, dividedBy]
        let rowTwo = [seven, eight, nine, times]
        let rowThree = [four, five, six, minus]
        let rowFour = [one, two, three, plus]
        let rowFive = [allClear, zero, point, equals]
        let columnOne = [clear, seven, four, one, allClear]
        let columnTwo = [negation, eight, five, two, zero]
        let columnThree = [percent, nine, six, three, point]
        let columnFour = [dividedBy, times, minus, plus, equals]
        
        for rowOne in [clear, negation, percent, dividedBy] {
            self.view.addConstraint(NSLayoutConstraint(
                item: rowOne,
                attribute: .Top,
                relatedBy: .Equal,
                toItem: buttonView,
                attribute: .Top,
                multiplier: 1.0,
                constant: 0))
        }
        
        for rowTwo in [seven, eight, nine, times] {
            self.view.addConstraint(NSLayoutConstraint(
                item: rowTwo,
                attribute: .Top,
                relatedBy: .Equal,
                toItem: rowOne,
                attribute: .Bottom,
                multiplier: 1.0,
                constant: 0))
        }
        for rowThree in [four, five, six, minus] {
            self.view.addConstraint(NSLayoutConstraint(
                item: rowThree,
                attribute: .Top,
                relatedBy: .Equal,
                toItem: rowTwo,
                attribute: .Bottom,
                multiplier: 1.0,
                constant: 0))
        }
        for rowFour in [one, two, three, plus] {
            self.view.addConstraint(NSLayoutConstraint(
                item: rowFour,
                attribute: .Top,
                relatedBy: .Equal,
                toItem: rowThree,
                attribute: .Bottom,
                multiplier: 1.0,
                constant: 0))
        }
        for rowFive in [allClear, zero, point, equals] {
            self.view.addConstraint(NSLayoutConstraint(
                item: rowFive,
                attribute: .Bottom,
                relatedBy: .Equal,
                toItem: buttonView,
                attribute: .Bottom,
                multiplier: 1.0,
                constant: 0))
        }
        for columnOne in [clear, seven, four, one, allClear] {
            self.view.addConstraint(NSLayoutConstraint(
                item: columnOne,
                attribute: .Left,
                relatedBy: .Equal,
                toItem: buttonView,
                attribute: .Left,
                multiplier: 1.0,
                constant: 0.0))
        }
        for columnTwo in [negation, eight, five, two, zero] {
            self.view.addConstraint(NSLayoutConstraint(
                item: columnTwo,
                attribute: .Left,
                relatedBy: .Equal,
                toItem: columnOne,
                attribute: .Right,
                multiplier: 1.0,
                constant: 0.0))
        }
        for columnThree in [percent, nine, six, three, point] {
            self.view.addConstraint(NSLayoutConstraint(
                item: columnThree,
                attribute: .Left,
                relatedBy: .Equal,
                toItem: columnTwo,
                attribute: .Right,
                multiplier: 1.0,
                constant: 0.0))
        }
        for columnFour in [dividedBy, times, minus, plus, equals] {
            self.view.addConstraint(NSLayoutConstraint(
                item: columnFour,
                attribute: .Right,
                relatedBy: .Equal,
                toItem: buttonView,
                attribute: .Right,
                multiplier: 1.0,
                constant: 0.0))
        }
        equals.setTitle("=", forState: UIControlState.Normal)
        point.setTitle(".", forState: UIControlState.Normal)
        zero.setTitle("0", forState: UIControlState.Normal)
        one.setTitle("1", forState: UIControlState.Normal)
        two.setTitle("2", forState: UIControlState.Normal)
        three.setTitle("3", forState: UIControlState.Normal)
        four.setTitle("4", forState: UIControlState.Normal)
        five.setTitle("5", forState: UIControlState.Normal)
        six.setTitle("6", forState: UIControlState.Normal)
        seven.setTitle("7", forState: UIControlState.Normal)
        eight.setTitle("8", forState: UIControlState.Normal)
        nine.setTitle("9", forState: UIControlState.Normal)
        plus.setTitle("+", forState: UIControlState.Normal)
        minus.setTitle("-", forState: UIControlState.Normal)
        times.setTitle("x", forState: UIControlState.Normal)
        clear.setTitle("C", forState: UIControlState.Normal)
        negation.setTitle("+/-", forState: UIControlState.Normal)
        percent.setTitle("%", forState: UIControlState.Normal)
        dividedBy.setTitle("÷", forState: UIControlState.Normal)
        allClear.setTitle("AC", forState: UIControlState.Normal)
    }
}