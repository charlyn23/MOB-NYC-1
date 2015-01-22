//
//  BadPlayer.swift
//  Class06Game
//
//  Created by Charlyn Buchanan on 1/14/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import Foundation

class BadPlayer: Player {
    
    override func attack() -> (message: String, damage: Int) {
        return ("Bad guy attacked", 6)
    }
    
}

