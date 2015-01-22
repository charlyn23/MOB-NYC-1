

import Cocoa

// Playground - noun: a place where people can play

import Cocoa

class Player {
    var name: String?
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

class GoodPlayer: Player {
    
    override func attack() -> (message: String, damage: Int) {
        return ("Good guy attacked", 3)
    }
    
}

class BadPlayer: Player {
    
    override func attack() -> (message: String, damage: Int) {
        return ("Bad guy attacked", 3)
    }
    
}

class Match {
    var matchName: String = "Default Match Name"
    var player1: Player
    var player2: Player
    
    init(firstPlayerForThisGame: Player, secondPlayerForThisGame: Player) {
        player1 = firstPlayerForThisGame
        player2 = secondPlayerForThisGame
    }
    
    func playGame() {
        self.playGame(player1, defender: player2)
    }
    
    func playGame(attacker: Player, defender: Player) {
        defender.health = defender.health - attacker.attack().damage
        if (attacker.health > 0) && (defender.health > 0) {
            playGame(defender, defender: attacker)
            println(player1.health)
            println(player2.health)
        } else {
            println("The game is over.")
            if attacker.health > 0 {
                if let attackerName = attacker.name {
                    println("\(attackerName) won")
                }
            } else {
                if let defenderName = defender.name {
                    println("\(defenderName) won")
                }
            }
        }
    }
}

var harryPotter = GoodPlayer(name: "Harry Potter")
var voldemort = BadPlayer(name: "Voldemort")

var epicBattle = Match(firstPlayerForThisGame: harryPotter, secondPlayerForThisGame: voldemort)
epicBattle.playGame()
