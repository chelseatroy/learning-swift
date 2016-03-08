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




