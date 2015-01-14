import UIKit
import Foundation

class Human {
    var name:String?
    var age: Int?
    var gender: String?
}

//to create a new human (instant), say the className() .
//if a var isn't optional and not defined, you will get an error. It can't be nothing. It must have a value

var rudd = Human() //this is an initializer, because it's a new instant
rudd.name = "Rudd"
rudd.age = 29
rudd.gender = "Male"

var sean = Human()
sean.name = "Sean"
sean.gender = "Male"
sean.age = 45

//These are two instances of Human: Sean and Rudd. They are separate from each other. Because the variables are all optional, the code would run if we set any of it to nil. 
//Classes are bundles of functions and variables.


//New Class

var view = UIView()
view.backgroundColor = UIColor.purpleColor()




class Animal {
    var species: String?
    func prettyPrint() -> String? {
        return "Some boring generic species"
    }
}

class Dog: Animal {
    var name: String?
    override init() {
        super.init()
        species = "Dog"
    }
    override func prettyPrint() -> String? {
        return "Some exciting dog!"
    }
}
var rover = Dog() //calling init on dog with no parameters
rover.name = "Rover"
println(rover.name)
println(rover.species)

/////////
//class Animal {
//    var species: String
//    init(theSpecies: String) {
//        species = theSpecies
//    }



//you can also 
//      init() {
//      species = namespecies
//      }

func prettyPrintAnimal(animal: Animal) {
    println("I love \(animal.species)")
}







