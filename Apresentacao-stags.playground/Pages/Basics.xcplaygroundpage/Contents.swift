

//: # The basics

import Foundation

var counter = 0
type(of: counter)

let presentationName: String = "Hello, Dextragiários 👩‍💻👨‍💻"
print(presentationName)

var 🍕 = "PIZZA"
print(🍕)

func incrementCounter(by number: Int) -> Int {
    counter += number
    return counter
}

print(counter)
print(incrementCounter(by: 1))


/// Value vs reference types

// struct => Value type
// class => Reference type

class Restaurant {
    var address: String = ""
}

class Pizzeria {
    var name: String

    init(name: String) {
        self.name = name
    }
}

var pizzeria = Pizzeria(name: "Pizza Hut")
var pizzeriaCopy = pizzeria

pizzeria.name = "Dominos"
print(pizzeriaCopy.name)


/// Enums

enum PizzaFlavour: String {
    case margherita = "Margherita"
    case pepperoni = "Pepperoni"
    case mozzarella = "Mozzarella"
}

print(PizzaFlavour.pepperoni.rawValue)

/// Unit tests

import XCTest

XCTAssertEqual(counter + 3, incrementCounter(by: 3))

//: [Next](@next)
