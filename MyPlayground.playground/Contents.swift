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

func add2(_ numbers: UInt...) -> UInt {
    var total: UInt = 0
    for num in numbers {
        total += num
    }
    return total
}

add2(1)
add2(1, 2, 3, 4)
add2()

let addFunc = add2
addFunc(1, 2, 3, 4)


func add(left: Int, right: Int) -> Int {
    return left + right
}

func math(left: Int, right: Int, op: (Int, Int) -> Int) -> Int {
    return op(left, right)
}
math(left: 2, right: 2, op: add)

let multiply = { (left: Int, right: Int) -> Int in
    return left * right
}

math(left: 10, right: 2, op: { (left, right) in return left / right })


func doSomething(with: inout Int) {
    with += 22
    print(with)
}

func doSomethingElse(with: Int) {
    var with = with
    with *= 2
    print(with)
}
var x = 5
doSomething(with: &x)
print(x)

var shoppingList: [String] = ["catfish", "water", "tulips", "blue paint"]
shoppingList.append("soda")
print(shoppingList)

shoppingList[1] =  "h2o"
print(shoppingList)

var short = shoppingList.filter() {
    $0.lengthOfBytes(using: String.Encoding.ascii) > 4
}

print(short)

for name in shoppingList {
    print(name)
}

var shoppingList2 =
    [0: "catfish", 1: "water", 2: "tulips", 3: "blue paint"]

//OPTIONAL TYPES
/*
 Optionals are either a value or nil
 
 ? asking if it could be nil
 ! you know it is not nil
 
 */












