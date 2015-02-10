
var firstVariable = "Hello World"

firstVariable = "How's it going?"

var helloVariable = "Hello"
var worldVariable = "World"

var completeString = helloVariable + " " + worldVariable

var stringInterpolated = "\(helloVariable) \(worldVariable)"


let firstConstant = "This is my first constant"

var firstInteger: Double = 2
var secondInteger = 3.5
var sum = firstInteger + secondInteger

var thirdInteger = 3.55555

//var sum = firstInteger + thirdInteger

func helloWorld(nameToOutput: String) -> String {
    return "Hello \(nameToOutput)"
}

helloWorld("Steven")

func helloFunction() {
    println("Hello this is my first function.")
}
helloFunction()





func someFunction(name: String, num1: Int, num2: Int) -> String {
    return "Hello \(name)! The sum is : \(num1 + num2)"
}
someFunction("Bob", 3, 5)


