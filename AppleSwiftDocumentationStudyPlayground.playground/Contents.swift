//: Playground - noun: a place where people can play

import UIKit

//The Basics

let fooBar = ("foo", "bar", 8)
fooBar.0

let (foo, bar, something) = fooBar
foo
bar
something

let (oog, _, _) = fooBar
oog

typealias HttpStatusCode = (status: Int, body: String)

func returnResponse(response: HttpStatusCode) -> (String, String) {
    return ("Response is a \(response.status)", "Body is \(response.body)")
}

var thisResponse:HttpStatusCode = (200, "OK")
returnResponse(thisResponse)

var hello: String? = "ohai"

if let greeting = hello {
    print(greeting)
}

//Basic Operators

var hi: String?
//hi = "yo"
let greeting = hi ?? "hello"

let names = ["Anna", "Alex", "Bryan"]
for i in 0..<names.count {
    print(names[i])
}

//Strings and Characters
"".isEmpty
"notempty".isEmpty

for char in "HELLO".characters {
    print(char)
}

let exclamationMark: Character = "!"
var allo = "Hello"
allo.append(exclamationMark)

let germanGreeting = "Guten Tag!"
germanGreeting[germanGreeting.startIndex]
germanGreeting[germanGreeting.endIndex.predecessor()]
germanGreeting[germanGreeting.startIndex.successor()]
let index = germanGreeting.startIndex.advancedBy(7)
germanGreeting[index]

//greeting[greeting.endIndex] // error
//greeting.endIndex.successor() // error

for index in greeting.characters.indices {
    print("\(greeting[index]) ", terminator: "")
}

//Collection Types
var stringArray = ["hey", "hi"]
stringArray.append("Hello")

for (index, value) in stringArray.enumerate() {
    print("Item \(index + 1): \(value)")
}

var myFavoriteMusic: Set = ["Rock", "Jazz", "Funk"]
var yourFaveMusic: Set = ["Rock", "Rap", "Opera"]

myFavoriteMusic.intersect(yourFaveMusic)
myFavoriteMusic.exclusiveOr(yourFaveMusic)
myFavoriteMusic.union(yourFaveMusic)
myFavoriteMusic.subtract(yourFaveMusic)

myFavoriteMusic.insert("Rap")
myFavoriteMusic.insert("Opera")

myFavoriteMusic.isSubsetOf(yourFaveMusic)
myFavoriteMusic.isSupersetOf(yourFaveMusic)
myFavoriteMusic.isStrictSubsetOf(yourFaveMusic)
myFavoriteMusic.isStrictSupersetOf(yourFaveMusic)
myFavoriteMusic.isDisjointWith(yourFaveMusic)

var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

airports["APL"] = "Apple International"
// "Apple International" is not the real airport for APL, so delete it
airports["APL"] = nil
// APL has now been removed from the dictionary

if let removedValue = airports.removeValueForKey("DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

airports.keys
airports.values
let airportCodes = [String](airports.keys)

//Control Flow

let legs = ["spider": 8, "cat": 4, "orangutan": 2]
for (animal, numLegs) in legs {
    print("a \(animal) has \(numLegs) legs")
}

for var index = 0; index < 3; ++index {
    print("index is \(index)")
}

var i = 0
while i < 4 {
    ++i
}

repeat {
  ++i
} while i > 8
//runs once regardless

var fruit = "pear"
switch fruit {
    case "banana":
        print("peel me")
    case "pear",
    "apple":
        print("eat me whole")
    default:
        print("I have lots of vitamins")
}



