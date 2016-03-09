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


