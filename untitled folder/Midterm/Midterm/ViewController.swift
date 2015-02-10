//
//  ViewController.swift
//  Midterm
//
//  Created by Charlyn Buchanan on 2/9/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import UIKit

class Calculator: UIViewController {
//20 Buttons
//1 Label (number display)

    typealias ButtonInfo = (label: String, function: String)
    
    let btnDef: [ButtonInfo] = [
        (label: "0", function: "pressedZero"),
        (label: "1", function: "pressedOne"),
        (label: "2", function: "pressedTwo"),
        (label: "3", function: "pressedThree")
    ]
//        ],
//        [
//            label: "1",
//            function: "pressedOne"
//        ]
//    
//    ]
    
    
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
        func autolayout() {
            
            
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func buildButtons() {
        for btn in self.btnDef {
//            button = UIButton()
            
        }
        
    }
    
    
}

