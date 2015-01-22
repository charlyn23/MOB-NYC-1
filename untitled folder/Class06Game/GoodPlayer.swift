//
//  GoodPlayer.swift
//  Class06Game
//
//  Created by Charlyn Buchanan on 1/14/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import Foundation


class GoodPlayer: Player {
    
    override func attack() -> (message: String, damage: Int) {
        return ("Good guy attacked", 3)
    }
    
}