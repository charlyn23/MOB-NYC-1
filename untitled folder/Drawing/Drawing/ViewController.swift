//
//  ViewController.swift
//  Drawing
//
//  Created by Charlyn Buchanan on 2/2/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do code here    
        var button = UIButton(frame: CGRect (x: 10, y: 10, width: 100, height: 40))
        button.setTitle("click!", forState: UIControlState.Normal)
        button.backgroundColor = UIColor.redColor()
        self.view.addSubview(button)
        button.addTarget(self, action: "didTapButton", forControlEvents: UIControlEvents.TouchUpInside)
    
//        var square = UIView(frame: <#CGRect#>(x: o, y: 0, width: 100, height: 100))
//        square.backgroundcolor = UIColor.blueColor()
    }
    
    func didTapButton() {
//        UIView.animateWithDuration(.3, animations: <#() -> Void##() -> Void#>)
//        selfbutton.frame.origin.y = self.button.frame.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

