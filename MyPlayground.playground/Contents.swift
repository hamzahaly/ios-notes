//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sayHello(_ str: String) -> String {
    return "Hello, \(str)"
}

print(sayHello("Fred"))


for _ in 1...5 {
    print("Hello")
}

print("Howdy, world")

func sayGoodBye(_ str: String) -> String {
    return "GoodBye, \(str)"
}
print(sayGoodBye("Barry"))

func roll(numberOfDice: UInt, times: UInt, withBonus: UInt) -> [UInt] {
    var results: [UInt] = []
    for _ in 1...times {
        var accum: UInt = 0
        for _ in 1...numberOfDice {
            let diceRoll = UInt(arc4random_uniform(6) + 1)
            accum += diceRoll
        }
        results.append(accum + withBonus)
    }
    
    return results
}

let dieRolls = roll(numberOfDice: 3, times: 6, withBonus: 0)
print(dieRolls)

roll(numberOfDice: 3, times: 6, withBonus: 0)

func add(_ numbers: UInt...) -> UInt {
    var total: UInt = 0
    for num in numbers {
        total += num
    }
    return total
}

add(1)
add(1, 2, 3, 4)
add()



