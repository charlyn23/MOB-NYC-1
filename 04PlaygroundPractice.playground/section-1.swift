// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.

func primeOrComposite(number: Int) {
    if number == 0 {
        println("neither")
    }
    else if number == 1 {
        println("neither")
    }
    else if number == 2 {
        println("prime")
    }
    else {
        let isComposite = true
        for index in 2..<number {
            if number % index == 0 {
                println("\(number) is composite")
            }
        } if letComposite == false {
            prinln("\(number) is prime")
        }
    }
}

    primeOrComposite(8)
