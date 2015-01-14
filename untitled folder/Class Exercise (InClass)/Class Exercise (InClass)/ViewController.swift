//
//  ViewController.swift
//  Class Exercise (InClass)
//
//  Created by Charlyn Buchanan on 1/12/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBOutlet weak var animalLabel: UILabel!
    
    
    @IBAction func Dog(sender: AnyObject) {
        var myDog = Animal()
        myDog.name = "Thunder"
         myDog.species = "Canine"
        animalLabel.text = myDog.stringRepresentation()
        view.backgroundColor = UIColor.yellowColor()
    }
    @IBAction func Cat(sender: AnyObject) {
        var myCat = Animal()
        myCat.name = "Shadow"
        myCat.species = "Feline"
        animalLabel.text = myCat.stringRepresentation()
    }


}

