
// TODO: Write a function that prints out "Hello world!" 10 times

func helloWorld() {
    var a: Int
    for a = 0; a < 10; ++a {
        println("Hello world!")
        }
}
helloWorld()

//set up function. nothing is changing, so () empty {
//establish a variable becuase we need it to establish the range (ex: i) {
//set up range to print 10 times. i=0 to run 0; 1<10 to run all numbers less than ten; ++i so that it can increase by one each run. it MUST be <10, because the 0th run counts. we're essentially running the function for 0-9, hence to times.


// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func hitThisLine() {
    var i: Int
    for i = 0; i < 20; ++i {
        println("Hit this line \(i) times!")
    }
}
hitThisLine()

func heyGuys() {
    var i: Int
    for i = 0; i < 10; ++i {
        println("Hey guys!")
    }
}
heyGuys()




func oops() {
    var i: Int
    for i = 0; i < 15; ++i {
        println("Oops, I did it again!")
    }
}
oops()


func spooky() {
    var i: Int
    for i = 0; i < 3; ++i {
        println("Beetlejuice!")
    }
}
spooky()

// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"

    

var name = "Charlyn"
func helloname() {
    println("Hello, \(name)")
}
helloname()


// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"

func howdy(name: String?) {
    if let str = name {
    println("Hello \(str)")
    } else {
    println("Hello world!")
    }
}
howdy("Kim")

func strOrNot(name: String?) {
    if let str = name {
        println("Looks like it's a string, \(str).")
    } else {
        println("This isn't a string.")
    }
}
strOrNot("Sam")

func acceptStringOptional(name: String?) {
    if let str = name {
        println("It will accept the string, \(str)")
    } else {
        println("It won't accept the string.")
    }
}
acceptStringOptional("Bob")



// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"

func maybeString(name: String?) {
    if let str = name {
        println("Hello \(str)!")
    } else {
        println("Hello world!")
    }
}
maybeString("Charlyn")




















