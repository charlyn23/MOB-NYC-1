//
//  ViewController.swift
//  AthleteNames
//
//  Created by Charlyn Buchanan on 2/18/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var athleteNames = ["Tim Robinson", "Patrick Ewing", "Charles Barkley"]
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(athleteNames, forKey: "athleteNames")
        println(defaults.arrayForKey("athleteNames"))
        
    //NSUserDefaults.standardUserDefaults().setBool(true, forKey: “mySetting”)
        
        let array = NSArray(contentsOfFile: "Athletes.plist")
       if let path =  NSBundle.mainBundle().pathForResource("Athletes", ofType: "plist") {
        var array = NSArray(contentsOfFile: path)
        println(array)
        array?.writeToFile(path, atomically: true)
        }
        
    
        
    }
    @IBOutlet weak var athleteTable: UITableView!
        cell.athleteNames.text
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

