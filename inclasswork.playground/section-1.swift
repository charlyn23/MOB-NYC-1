import Foundation


//A function that prints a random number

func toDoOne() {
    var number: Int32 = rand()
    println(Int(number))
}
toDoOne()





func returnRandNum() -> Int {
    return (Int(rand()))
}
returnRandNum()





//function that takes two number and returns their product

func product(firstNumber: Int, secondNumber:Int) -> Int {
    return firstNumber * secondNumber
}
product(2,4)


//Problem: you are given a string. The function has to tell you if the string has a lower case “a"
//This will return a Bool (because it’s whether or not)
//The TYPE is a String (it isn't a float or integer)
/// Creat a loop that compares each character in the word to lowercase "a"
//   Our loop is looking for a character in the string

func foo(str:String) -> Bool {
    for character in str {
        if character == "a" {
            return true
        }
    }
    return false
}
println(foo("minnie"))
println(foo("annie"))


//////////////////////
class Human {
    var name: String?
    var age: Int?
}

var rudd = Human()
rudd.name = "Rudd"
rudd.age = 29
println(rudd.name)
println(rudd.age)

var travis = Human()
travis.name = "Travis"
println(travis.name)
travis = rudd


//human is the class
//rudd and travis is the instance
//classes beging wih upper cases. functions are lower camelcase


















