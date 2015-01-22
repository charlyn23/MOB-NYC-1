//
//  Player.swift
//  Class06Game
//
//  Created by Charlyn Buchanan on 1/14/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import Foundation

class Player {
    var name: String
    var health: Int = 100
    
    func attack() -> (message: String, damage: Int) {
        return ("attack performed", 2)
    }
    
    init(name: String) {
        self.name = name
    }
    
    func isAlive() -> Bool {
        if (health > 0) {
            return true
        } else {
            return false
        }
    }
}

