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


//no fallthrough, so no need for break
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


//switch statement takes the first matching case
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):
    print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}

//value binding
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

//Labeled statements in control flow
let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

gameLoop: while square != finalSquare {
    if ++diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
        continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")

///Check API Availability
if #available(iOS 9, OSX 10.10, *) {
    // Use iOS 9 APIs on iOS, and use OS X v10.10 APIs on OS X
} else {
    // Fall back to earlier iOS and OS X APIs
}

//Functions

//tuple return type
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax([8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")

//Optional tuple
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

//local and external parameter names
//call the function with the external name,
//use the local name for implementation
func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)!"
}
print(sayHello(to: "Bill", and: "Ted"))

//Default paramenters
func someFunction(parameterWithDefault: Int = 12) {
    // function body goes here
    // if no arguments are passed to the function call,
    // value of parameterWithDefault is 12
}
someFunction(6) // parameterWithDefault is 6
someFunction() // parameterWithDefault is 12

//Variadic parameters
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers

//modifying inputs
func swapTwoInts(inout a: Int, inout _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// prints "someInt is now 107, and anotherInt is now 3"

//functions as parameters
func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}
func printMathResult(mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)
// prints "Result: 8"

//Nested Functions
func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backwards ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}

//Closures
// This got complicated. Come back to this.

//Enumerations


