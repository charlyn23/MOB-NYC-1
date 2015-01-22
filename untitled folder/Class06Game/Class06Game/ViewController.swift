//
//  ViewController.swift
//  Class06Game
//
//  Created by Charlyn Buchanan on 1/14/15.
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
    
    
    @IBOutlet weak var Results: UILabel!
    @IBAction func startMatch(sender: AnyObject) {
        
        
        
        var harryPotter = GoodPlayer(name: "Harry Potter")
        var voldemort = BadPlayer(name: "Voldemort")
        var epicBattle = Match(firstPlayerForThisGame: harryPotter, secondPlayerForThisGame: voldemort)
        Results.text = epicBattle.playGame()
    }
}