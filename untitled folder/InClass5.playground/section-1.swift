// Playground - noun: a place where people can play

import Foundation

class Person {
    var name: String // you will get an error unless you ? or initialize
    
    init(theName: String) {
        name = theName
    }
}

let travis = Person(theName: "Travis")
println(travis.name)

var travisTwo = Person(theName: "Travis")
travisTwo.name = "Travis Doppelganger"



var rectangle = CGRect(x:0, y:0, width: 10, height: 10)
var rectangleCopy = rectangle
rectangleCopy.size.width = 100
