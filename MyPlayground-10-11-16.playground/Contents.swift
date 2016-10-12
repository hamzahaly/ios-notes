//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
struct Money {
    //Read only property
    var amount: Int32 {
        get { return self.amount * 2; }
        set(newvalue) { self.amount = newvalue / 2; }
    }
    var currency = "USD"
    
    var frozen: Bool {
        get { return false }
    }
}
 */

struct Money {
    private var pennies: Int32 = 0
    var amount: Int32 {
        get {return pennies / 100; }
        set(newvalue) { self.pennies = newvalue * 2; }
    }
    
    //Initializer you created that needs to be provided. If not specified a default one is made
    init(amt: Int32) {
        self.amount = amt
    }
    
    /* 
     init(amt: Int32 = 0) {
        self.amount = amt
     }
     */
    
}

class Currency {
    
}

class Person {
    static let NONE = Person(fn: "(NONE", ln: "(NONE)")
    
    var firstName: String = ""
    var lastName: String = ""
    var age: UInt8 = 0
    
    var _spouse: Person? = nil
    var spouse: Person {
        get {
            if _spouse == nil {
                return Person.NONE
            } else {
                return _spouse!
            }
        }
        set(newvalue) {
            _spouse = newvalue
        }
    }
    
    static var totalPopulation = 0
    static func printPopulation() {
        print("There are \(Person.totalPopulation) in existence")
    }
    
    init(fn: String, ln: String) {
        firstName = fn
        lastName = ln
        Person.totalPopulation += 1
    }
    init(fn: String, ln: String, a: UInt8) {
        firstName = fn
        lastName = ln
        self.age = a
    }
    
    func sayHowdy() {
        print("\(firstName) says hello")
    }
    
    func getOlder() {
        print("\(firstName) has a birthday!")
        self.age += 1
    }
    
}

// Two instances of Money
let m = Money(amt: 12)
let m2 = m


//One instance of the Currency object
let c = Currency()
let c2 = c

let p = Person(fn: "Hamzah", ln: "Aly")
p.sayHowdy()
Person.printPopulation()

let p2 = Person(fn: "Hamzah", ln: "Aly")

/*
if p == p2 {
    print("yes")
}
*/

if p === p2 {
    print("Identical")
} else {
    print("Different")
}

class Student: Person {
    var subject: String
    //Failable initializer
    init?(fn: String, ln: String, subject: String) {
        if subject == "Philosophy" {
            return nil
        }
        
        self.subject = subject
        super.init(fn: fn, ln: ln)
    }
    
    override func getOlder() {
        print("DRINK DRINK DRINK")
        super.getOlder()
    }
}






