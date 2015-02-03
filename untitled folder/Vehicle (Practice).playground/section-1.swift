// Playground - noun: a place where people can play

import UIKit

class Vehicle {
    
    
    //Properties
    var MaxSpeed:Double
    var CurrentSpeed = 0.0
    var Make:String
    
    init (maxSpeed:Double, make:String) {
    
    MaxSpeed = maxSpeed
    Make = make
    }
    
    func getSpeed() ->Double {
        return MaxSpeed
    }
   
    func makeNoise() {
        
    }
}



//Let's make a subclass called Vehicle. It will inherit properties and methods available to Vehicle

class Car:Vehicle {
    
    
    //we want to implement makeNoise in individual subclasses, so we override
    override func makeNoise() {
            println("honk")
            }
    
    func accelerate() {
        println("accelerating")
    }
}

//New Class
class Ambulance:Vehicle {
    
    override func makeNoise() {
        println("Woowoo!")
    }
}

let aCar = (maxspeed: 75, make: "Jeep")
let aAmbulance = (maxspeed:105, make:"Ambulance Co.")



