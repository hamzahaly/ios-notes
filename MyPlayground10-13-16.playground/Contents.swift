//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

protocol Ageable {
    var age: Int {
        get set
    }
}
protocol Nameable {
    func fullName() -> String
}

class Person: Ageable, Nameable {
    var fname: String
    var lname: String
    var age: Int
    
    init(fname: String, lname: String, age: Int) {
        self.fname = fname
        self.lname = lname
        self.age = age
    }
    
    func fullName() -> String {
        return fname + " " +  lname
    }
}

class Pet: Ageable {
    var age: Int
    var name: String
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

func getOlder(_ thing: Ageable) {
    var olderThing = thing
    print("Happy Birthday!")
    olderThing.age += 1
}

var t = Person(fname: "Hamzah", lname: "Aly", age: 22)
var p = Pet(name: "Fluffy",age: 2)

getOlder(t)
getOlder(p)



/*
func getOlder(_ pet: Pet) {
    print("Happy Birthday!")
    pet.age += 1
}
 */

