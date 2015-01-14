// Playground - noun: a place where people can play
// Lesson 04

// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times




func helloWorld() {
    var i: Int
    for i = 0; i < 10; i++ {
        println("hello world!")
    }
}
helloWorld()



// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func hitThis() {
    var i: Int
    for i = 1; i <= 20; i++ {
        println("Hit this link \(i) times!")
    }
}
hitThis()



// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"
//
var name = "Charlyn"
func helloWorld(name: String) {
    println("Hello \(name)")
}
helloWorld(name)

//
func helloWorldToName(name: String) {
    println("Hello \(name)")
}
helloWorldToName(name)


//helloWorldtoName("Charlyn")
//helloWorldtoNAme("Sean")
//helloWorldtoname("Travis")

var nameTwo = "Rudd"
func helloWorldToNameWithoutParam() {
    println(nameTwo)
}
//helloWorldtoNameWithoutParam() {
//    println(nameTwo)
//    }




// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"
//Here, it may or may not be a string, hence "String?"
// if let -> to check if what is being pulled in a string or not a string.

func howdy(name: String?) {
    if let str = name {
        println("Hello \(str)!")
    } else {
        println("Hello world!")
    }
}
howdy("Kim")





//Multiple Parameters
func helloWorldToTwoPeople(nameOne: String, nameTwo: String) {
    println("Hello \(nameOne) and \(nameTwo)")
}
helloWorldToTwoPeople("Sean", "Travis")


//Return a Value
func formattedHelloWorldTextToName(name: String) ->String {
    return "Hello \(name), have a great class!"
}
formattedHelloWorldTextToName("Rudd")
println(formattedHelloWorldTextToName("Rudd") + ("Woohoo!"))


func lengthOfNames(nameOne: String, nameTwo: String) -> (Int, Int) {
    return (countElements(nameOne), countElements(nameTwo))
}
lengthOfNames("Charlyn", "Rudd")






// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci
// sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.
//establish fib sequence; 0...index. index will change so you can't set a fixed index; you want the function to return c

func fibonacci(index: Int) -> Int {
    var a = 0
    var b = 1
    var c = 1
    if index <= 0{
        println("no negative numbers or 0!")
    return -1
    }
    if index == 1 {
        return 0
    }
    if index == 2 {
        return 1
    }
    

    for i in 3...index {
        c = a + b
        a = b
        b = c
 
    }
    return c
}
fibonacci(8)

// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.
//identify the first ? values

func sumOfTwenty(index: Int) -> Int {
    var sum = 0
    for i in 1...index {
       // sum = sum + fibonacci(i)
        sum += fibonacci(i)
    }
    return sum
}
sumOfTwenty(7)



// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.



func primeDetector(testNumber: Int) -> String {
    let neither = "neither"
    let prime = "prime"
    let composite = "composite"
    
    //identify eceptional ints, -, 0, 1, 2
    
    if testNumber <= 1 {
        return neither
    } else if testNumber == 2 {
        return prime
    }
    
    //divide testNumber by each number that is smaller than it
    for i in 2...(testNumber - 1) {
        if testNumber % i == 0 {
            return composite
        }
    }
    return prime
}
primeDetector(7)

    
    

// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)
//first, print the first 20 fibonacci numbers

func fibValAndPrime(toIndex: Int) {
    for i in 1...toIndex {
        
        let fibVal = fibonacci(i)
  //      let primeOrComposite = primeDetector(fibval)
//        println("The \(i) index is \(fibVal), and is \(primeOrComposite)")
    }
}










// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).

func bill(amt: Float, percentage: Float) -> (Float,Float) {
    var tip = amt * percentage
    var total = tip + amt
    return (tip,total)
}
bill(50.0,0.2)

let f = 4.0


//CLASS EXAMPLE

func tipCalc(subTotal: Float, tip: Float?) -> (Float, Float) {
    
    var total = subTotal
    var tipAmount: Float = 0
    
    if let t = tip {
        tipAmount = subTotal * t
    }
    
    total += tipAmount
    
    return (total, tipAmount)
    
}
let tipResult = tipCalc(10.0, 0.2)
let t = tipResult




// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.


func reverseInput(word: String) -> String {
    var String
}




// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.

// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).

// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings

// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.
//
//



