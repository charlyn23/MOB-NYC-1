

import UIKit

var str = "Hello, playground"

var array = [0, 2, 6, 7, 3, 5]
let e = array [3]
// remember to search for items by index (postion)

var someInts = [0, 1, 2, 3]
someInts.append(4)      // we are adding an item of '4' to array

var someIntsCopy = someInts
someIntsCopy.removeLast()       //we are removing the last item

someInts
someIntsCopy

someInts.insert(1, atIndex: 1)  // we inserted item "1" at index(position) 1
someInts.count
//we now know for sure that the array has a count of 6. We can't search for anything beyond 6. 
//if you seach by index, be SURE that index exists or your app will crash
//someInts[10] is an error


for (someInt, index) in enumerate(someInts) {
    println("\(someInt) \(index)")
}
//we've asked it to print the items, then the index




//what does enumerate do, exactly? Maybe you want the value AND it's position....
//enumerate takes in an array, and returns a transformed array

for someInt in someInts {
println(someInt)
}

enumerate(someInts)

var names = ["Rudd", "Sean", "Travis"]
for name in names {
    println(name)
}
for (index, name) in enumerate(names) {
    println("\(index) \(name)")
}
//^here, enumerate returns the index and name



//Now for an optional:

var confusing: [Int?] = [1, 2, 3, nil]

// CLOSURES:

func printFiveTimes(string: String) {
    for i in 0..<5 {
        println(string)
    }
}
printFiveTimes("hey class!")


//Below, we are putting a function within a function that takes nothing(no parameter) and returns nothing. We have to expicitly state that

func doFiveTimes(someClosure: () -> ()) {
    for i in 0..<5 {
        //This runs 5 times
        someClosure()
    }

}
doFiveTimes({ () -> () in println("this happens five times!")
})

func printInt(someInt: Int) {
    println(someInt)
}
var someInt = 5
printInt(someInt)
printInt(5)


//to dismiss a view
//override func viewDidLoad() {
//    super.viewDidLoad()
//    self.dismissViewControllerAnimated(false, competion:nil)
//    self.dimissViewControllerAnimated(false, competion: { () -> Void in self.view.backgroundColor = UIColor.blueColor()
//    })
//} self.view.backgroundColor = UIColor.red.Color()

//first the bg color is set to red, and once the modal is dismissed, the bg color is set to blue. this chunk is being run anachonistically; not line by line



//DICTIONARIES

var arrayOfInts = [1, 2, 3]
var firstElement = arrayOfInts[1]

var age: [String: Int] = ["rudd": 29, "sam":20]
age ["kevin"] = 20
age["rudd"] = 15
let ruddsAge = age["rudd"]
age["billy"]     //returns nill because there is no ago(value) associated. dictionaries are optional.

//here, age is the dictionary. rudd is the key, 29 is the value. there can only be one rudd, hence it being the key. there can be someone else

var temps: [Int: Int] = [:]
// ^empty dictionary






