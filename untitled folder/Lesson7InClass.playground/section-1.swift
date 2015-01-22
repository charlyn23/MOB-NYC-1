// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//ARRAYS AND MAPS

var f = ["hi", "there", "class"]
    //   0th    1st     2nd
f[0]

//"Rudd"-> 29
//"Bob"-> 21
////[String:Int]
//map["bob"]


//Class Example//

let numbers = [0, 1, 2, 3, 4]
func addTwoInts(i1: Int, i2: Int) -> Int {
    return i1 + i2
}

//Let's get the sum of these. Use 'reduce'
numbers.reduce(0, combine: addTwoInts )


let strings = ["some", "collections", "of", "strings"]

func concat(s1: String, s2: String) -> String {
    return s1 + " " + s2
}
//^^concat takes in two strings, and returns one string by adding the the first string, a space, and the second string//

concat("hi", "there")
//^^Again, concate takes in two string, and combines them)//

strings.reduce("SeedValue", combine: concat)
//^We've put a func in a func: SeedValue + the two things concat combines^//

strings.reduce("SeedValue", combine: {(s1: String, s2: String) -> String in return s1 + s2
})
strings.reduce("SeedValue", combine: {(s1, s2) in return s1 + " " + s2
})
//is the same as//
strings.reduce("SeedValue", combine: {return $0 + $1
})
strings.reduce("SeedValue", combine: +)

//////////////////////////////////////////////////////