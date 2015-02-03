// Playground - noun: a place where people can play

import UIKit

class Dog { //Class is a blueprint of a dog
    
    //Properties - Adjectives that describe how we identify class members
    var Name:String
    var Breed:String
    var Age:Int
    
    //Initializer: Instructions to construct the dog
    init (name:String, breed:String, age:Int) {
        Name = name
        Breed = breed
        Age = age
    }
    //Methods - Verbs the dog can do
    
    func sit() {
        println("\(Name) is sitting")
    }
    
    func bark() {
        println("\(Name) is barking. Woof! Woof!")
    }
    
    func run() {
        println("\(Name) is running")
    }
    
    func getAge() -> Int {
        return Age
    }
    func getBreed() -> String {
        return Breed
    }
}

//Let's create a dog (outside the class, always)
//Call Dog, and pass through its properties to make instances of dog

let aDog = Dog(name: "Thunder", breed: "Rottie", age: 10)
let bDog = Dog(name: "Fido", breed: "Collie", age: 8)

//Let's make our dog instances do something using "."

aDog.bark()
bDog.sit()
bDog.getBreed()
