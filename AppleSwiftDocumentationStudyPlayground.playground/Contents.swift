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
enum CompassPoint: String {
    case North
    case South
    case East
    case West
}

enum Planet: Int {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, Pluto
}

let ourPlanet: Planet
ourPlanet = .Earth

let directionToHead = CompassPoint.South
switch directionToHead {
case .North:
    print("Lots of planets have a north")
case .South:
    print("Watch out for penguins")
case .East:
    print("Where the sun rises")
case .West:
    print("Where the skies are blue")
}

//Enumerations:Discriminated Unions/Tagged Unions/Variants
enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}

var productBarcode = Barcode.UPCA(8, 85909, 51226, 3)

switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
    print("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
case .QRCode(let productCode):
    print("QR code: \(productCode).")
}

//Enumerations:Default Values
enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}

let earthsOrder = Planet.Earth.rawValue
// earthsOrder is 3

let sunsetDirection = CompassPoint.West.rawValue
// sunsetDirection is "West"

let possiblePlanet = Planet(rawValue: 7)


//Enumerations:Recursive Enumerations

indirect enum ArithmeticExpression {
    case Number(Int)
    case Addition(ArithmeticExpression, ArithmeticExpression)
    case Multiplication(ArithmeticExpression, ArithmeticExpression)
}

(5 + 4) * 2
let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let sum = ArithmeticExpression.Addition(five, four)
let product = ArithmeticExpression.Multiplication(sum, ArithmeticExpression.Number(2))

//Classes and Structs
// - Classes are reference types; structures are value types

//Computed Properties
struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

//property observers
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps

//Type properties (static vars instantiated once for all instances of a class): example
struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                // cap the new audio level to the threshold level
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                // store this as the new overall maximum input level
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

//Methods
//See functions

//Subscripts
//For calling methods on a type by declaring paramenters in brackets

//Inheritance

class Bicycle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
//^ Why does this work if any object instantiated as a constant cannot have its properties changed?

//final

//Initialization
//Memberwise Initializers
struct Size {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)

//Using a closure to define a default property value
struct SomeType{}
class SomeClass {
    let someProperty: SomeType = {
        // create a default value for someProperty inside this closure
        // someValue must be of the same type as SomeType
        let someValue = SomeType()
        return someValue
    }()
}

//Deinitialization
class FileManager {
    deinit {
        // perform the deinitialization
        //this might be used right before an instance is deallocated to, for example, close a file that it opened.
    }
}

//Automatic Reference Counting
//Weak, unowned
//See notes from Zac

//Optional Chaining
//Can be done on optional properties or on methods that return optional types

//Errors and Throwing Errors
enum VendingMachineError: ErrorType {
    case InvalidSelection
    case InsufficientFunds(coinsNeeded: Int)
    case OutOfStock
}

struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    func dispenseSnack(snack: String) {
        print("Dispensing \(snack)")
    }
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.InvalidSelection
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.OutOfStock
        }
        
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.InsufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        dispenseSnack(name)
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels",
]

//use try?, try!, or do...catch to handle errors, or propagate them up by having a function throw
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}//even if it throws, "try" without punctuation used to call it

//do...catch can catch different types of errors independently
var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8
do {
    try buyFavoriteSnack("Alice", vendingMachine: vendingMachine)
} catch VendingMachineError.InvalidSelection {
    print("Invalid Selection.")
} catch VendingMachineError.OutOfStock {
    print("Out of Stock.")
} catch VendingMachineError.InsufficientFunds(let coinsNeeded) {
    print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
}
// Prints "Insufficient funds. Please insert an additional 2 coins."

//You use try? to handle an error by converting it to an optional value. If an error is thrown while evaluating the try? expression, the value of the expression is nil

//Using try? lets you write concise error handling code when you want to handle all errors in the same way. For example, the following code uses several approaches to fetch data, or returns nil if all of the approaches fail.
func fetchDataFromDisk() -> String? {}
func fetchDataFromServer() -> String? {}

func fetchData() -> String? {
    if let data = try? fetchDataFromDisk() { return data }
    if let data = try? fetchDataFromServer() { return data }
    return nil
}

//Sometimes you know a throwing function or method won’t, in fact, throw an error at runtime. On those occasions, you can write try! before the expression to disable error propagation and wrap the call in a runtime assertion that no error will be thrown. If an error actually is thrown, you’ll get a runtime error.

//For example, the following code uses a loadImage(_:) function, which loads the image resource at a given path or throws an error if the image can’t be loaded. In this case, because the image is shipped with the application, no error will be thrown at runtime, so it is appropriate to disable error propagation.

func loadImage(path: String) throws -> String {}

let photo = try! loadImage("./Resources/John Appleseed.jpg")

//A defer statement defers execution until the current scope is exited. This statement consists of the defer keyword and the statements to be executed later. The deferred statements may not contain any code that would transfer control out of the statements, such as a break or a return statement, or by throwing an error. Deferred actions are executed in reverse order of how they are specified—that is, the code in the first defer statement executes after code in the second, and so on.

func exists(path: String) -> Bool{}
func open(name: String) -> File {}
func close(name: File) {}

struct File {
    func readline() throws -> String? {}
}

func processFile(filename: String) throws {
    if exists(filename) {
        let file = open(filename)
        defer {
            close(file)
        }
        while let line = try file.readline() {
            // Work with the file.
        }
        // close(file) is called here, at the end of the scope.
    }
}

//Type casting
for (_, snack) in favoriteSnacks {
    if snack is String {
        print(snack)
    }
}

//use as? to return nil if downcasting fails, and as! to foce unwrap
//AnyObject, Any

//Nested Types

struct BlackjackCard {
    
    //example struct:
    // nested Suit enumeration
    enum Suit: Character {
        case Spades = "♠", Hearts = "♡", Diamonds = "♢", Clubs = "♣"
    }
    
    // nested Rank enumeration
    enum Rank: Int {
        case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        case Jack, Queen, King, Ace
        struct Values {
            let first: Int, second: Int?
        }
        var values: Values {
            switch self {
            case .Ace:
                return Values(first: 1, second: 11)
            case .Jack, .Queen, .King:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
            }
        }
    }
    
    // BlackjackCard properties and methods
    let rank: Rank, suit: Suit
    var description: String {
        var output = "suit is \(suit.rawValue),"
        output += " value is \(rank.values.first)"
        if let second = rank.values.second {
            output += " or \(second)"
        }
        return output
    }
}

//to refer to a nested type outside of the context in which it is defined:
let heartsSymbol = BlackjackCard.Suit.Hearts.rawValue
// heartsSymbol is "♡"


//Extensions
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"

//A lot of interesting stuff here on what extensions can and cannot do. Little about why. Return to this section.

extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()
// someInt is now 9

extension Int {
    enum Kind {
        case Negative, Zero, Positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
}

func printIntegerKinds(numbers: [Int]) {
    for number in numbers {
        switch number.kind {
        case .Negative:
            print("- ", terminator: "")
        case .Zero:
            print("0 ", terminator: "")
        case .Positive:
            print("+ ", terminator: "")
        }
    }
    print("")
}
printIntegerKinds([3, 19, -27, 0, -6, 0, 7])
// Prints "+ + - 0 - 0 +"

//Protocols
//Evidently, protocol methods/variables can be optional:
//(Why would I want to do this?)
@objc protocol CounterDataSource {
    optional func incrementForCount(count: Int) -> Int
    optional var fixedIncrement: Int { get }
}

//create an extension to add default behavior to a protocol:
extension CounterDataSource {
    func randomBool() -> Bool {
        return Double(random()) > 0.5
    }
}

//Protocol constraints:
//For instance, you can define an extension to the CounterDataSource protocol that applies to any collection whose elements conform to the TextRepresentable protocol from the example above.

extension CounterDataSource where Generator.Element: TextRepresentable {
    var textualDescription: String {
        let itemsAsText = self.map { $0.textualDescription }
        return "[" + itemsAsText.joinWithSeparator(", ") + "]"
    }
}

//Generics
protocol Hello {
    func swapTwoValues<T>(inout a: T, inout _ b: T)
}

//Extending an existing type to specify an associated type
extension Array: Container {}

//Where clauses
func allItemsMatch<
    C1: Container, C2: Container
    where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>
    (someContainer: C1, _ anotherContainer: C2) -> Bool {
    
    // check that both containers contain the same number of items
    if someContainer.count != anotherContainer.count {
        return false
    }
    
    // check each pair of items to see if they are equivalent
    for i in 0..<someContainer.count {
        if someContainer[i] != anotherContainer[i] {
            return false
        }
    }
    
    // all items match, so return true
    return true
    
}



