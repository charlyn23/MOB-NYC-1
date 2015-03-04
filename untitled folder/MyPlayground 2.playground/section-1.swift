var age = 22
var name = "Charlyn"
//
println("Hello \(name), you are \(age) years old!")
//
if age > 21 {
    println("You can drink")
} else if age > 18 {
    println("You can vote")
} else if age > 16 {
    println("You can drive")
}
//
if age > 21 {
    println("you can drive, vote and drink (but not at the same time!")
} else if age > 18 {
    println("you can drive and vote.")
} else if age > 16 {
    println("you can drive.")
}
//
for index in 1...4 {
    println()
}

for index in 1...50 {
    println("\(index) times 7 minus 1 is \([index * 7] - 1")
}

println("test")


// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)
