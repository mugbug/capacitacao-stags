

//: # The basics

import Foundation

var counter = 0
type(of: counter)

let presentationName = "Apresentação stags 😎 🚀"
print(presentationName)

var 🍕 = "PIZZA"
print(🍕)

func incrementCounter(by number: Int) -> Int {
    counter += number
    return counter
}

print(counter)
print(incrementCounter(by: 1))

import XCTest

XCTAssertEqual(counter + 3, incrementCounter(by: 3))

//: [Next](@next)
