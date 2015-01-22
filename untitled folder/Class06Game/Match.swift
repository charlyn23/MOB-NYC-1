//
//  Match.swift
//  Class06Game
//
//  Created by Charlyn Buchanan on 1/14/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import Foundation

class Match {
    var matchName: String = "Default Match Name"
    var player1: Player
    var player2: Player
    
    init(firstPlayerForThisGame: Player, secondPlayerForThisGame: Player) {
        player1 = firstPlayerForThisGame
        player2 = secondPlayerForThisGame
    }
    
    func playGame() -> String {
        return playGame(player1, defender: player2)
    }
    
    func playGame(attacker: Player, defender: Player) -> String {
        defender.health = defender.health - attacker.attack().damage
        if (attacker.health > 0) && (defender.health > 0) {
            println(player1.health)
            println(player2.health)
            return playGame(defender, defender: attacker)
        } else {
            println("The game is over.")
            if attacker.health > 0 {
                return "\(attacker.name) won"
            } else {
                return "\(defender.name) won"
            }
        }
    }
}

