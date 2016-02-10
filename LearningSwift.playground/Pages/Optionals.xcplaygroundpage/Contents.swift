//: [Previous](@previous)
import Foundation
/*:
# Optionals

Optional is a very powerful feature of Swift. So, what is optional? When declaring variables in Swift, they are designated as non-optional by default. In other words, you have to assign a default value to the variable. If you try to set a `nil` value (that means no value) to a non-optional, the compiler will say, "Hey, you can't set a nil value!"

Let's write a couple lines of code and give a try:

    var message = "Swift is awesome!"
    message = nil
*/





/*:

Once you insert the second line of the code, Xcode immediately shows you an error:

![Optional errors](playground-optional-error.png)

If you have some experience with Objective-C, you may be a bit surprised. In Objective-C, you won't get any compile-time error when assigning nil to a variable or declaring a property without initial value.

So how do you declare a variable as an optional? All you need is to append a question mark right after the variable name. Here is an example:

    var message? = "Swift is awesome!"

You can still assign a default value for an optional. If it doesn't have an initial value, you can write the variable declaration like this:

    var message:String?

All you need is to specify the type of the variable. Try to declare the message variable as an optional and assign it with a `nil` value. 

    var message:String?
    message = nil
*/



/*:
Playgrounds no longer give you an error. You can set a `nil` value to `message` because it is now an optional.

## Why Optionals

So why introducing optionals in Swift? Swift is designed for safety. As Apple mentioned, optionals are an example of the fact that Swift is a type safe language. Swift's optionals provide compile-time check that would prevent some common programming errors happening at runtime, which will probably lead to app crashes.

Most of the runtime errors are due to the access of a `nil` variable. If you've done a proper validation before using a `nil` variable, it can avoid most of the runtime errors. The introduction of Optionals reinforces this kind of checking. If you're going to access an optional, you have to perform a nil-check. Otherwise, the compiler gives you an error.

Let's go through the below example and you will have a better understanding of the power of optionals. 

    let message1 = "Why optionals?"
    var message2:String? = "Because Swift wants you to write some better code."

    let finalMessage = message1 + message2

*/




/*:
If you execute the code snippet in Playgrounds, it will indicate an error for the `finalMessage` variable. Because `message2` is an optional, even if it is assigned with an initial value, it may contain a `nil` value. So, the error means something like this: "Hey, `message2` is declared as an optional. You have to perform a nil-check before using it."

As you can see from the example, Swift's optionals reinforce the nil-check and offer compile-time cues to developers. Obviously, the use of optionals contributes to better code quality.
*/


/*:
## Unwrapping Optionals Using Force Unwrapping
So how can we make the code work? Apparently, we need to test if `message2` contains a nil value or not. We modify the code as follows:

    let message1 = "Why optionals?"
    var message2:String? = "Because Swift wants you to write some better code."

    if message2 != nil {
        let finalMessage = message1 + message2!
    }

Swift provides developers a number of ways to work with optionals. The most straightforward one is to perform a nil-check using `if` statement. Once you confirm the optional contains a value, you unwrap it by placing an exclamation mark (!) to the end of the optional's name. In Swift this is known as forced unwrapping. You use the `!` operator to unwrap an optional and reveal the underlying value.
*/

/*:

But what if we forget the nil-check and force unwrap `message2` like below?

    let message1 = "Why optionals?"
    var message2:String? = "Because Swift wants you to write some better code."

    let finalMessage = message1 + message2!

There will be no compile-time error. The compiler assumes that the optional contains a value as forced unwrapping is used. But if `message2` is set to `nil`, your app may end up with a runtime error. If you use force unwrapping, remember to perform a nil-check first.
*/


/*:
## Optional Binding

Other than forced unwrapping, optional binding is a simpler and recommended way to unwrap an optional. You use optional binding to check if the optional contains a value or not. If it does contain a value, unwrap it and put it into a temporary constant or variable.

There is no better way to explain optional binding than using an example. We convert the sample code in the previous example into optional binding like this:

    let message1 = "Why optionals?"
    var message2:String? = "Because Swift wants you to write some better code."

    if let tempMessage = message2 {
        let finalMessage = message1 + tempMessage
    }

*/




/*:
The `if let` (or `if var`) are the two keywords of optional binding. In plain English, the code says "If `message2` contains a value, unwrap it, set its value to `tempMessage` and execute the code block. Otherwise, just skip it the block". As `tempMessage` is a new constant, you no longer need to use the `!` suffix to access its value.

*/


/*:

## Optional Chaining
Before explaining optional chaining, let's tweak the original example. We create a new class named Stock with the code and price properties, which are optionals. The findStockCode function is modified to return Stock class instead of String.

According to Apple, optional chaining is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil. If the optional contains a value, the property, method, or subscript call succeeds; if the optional is nil, the property, method, or subscript call returns nil. Let's tweak the example a bit and understand what optional chaining means.

    var html:String? = "Because%20Swift%20wants%20you%20to%20write%20some%20better%20code."

    if let tempHtml = html {
        if let newHtml = tempHtml.stringByRemovingPercentEncoding {
            print(newHtml)
        }
    }

In the above code, we initialize `html` to a string encoding using percent encoding (aka URL encoding). This encoding is commonly used in encoding URLs. We simply call up `stringByRemovingPercentEncoding` method to decode the html string. If you try to run it in Playgrounds, it works perfectly.
*/







/*:
There is nothing wrong with the code. With optional chaining, you can simplify the code like this:

    var html:String? = "Because%20Swift%20wants%20you%20to%20write%20some%20better%20code."

    if let newHtml = html?.stringByRemovingPercentEncoding {
        print(newHtml)
    }

The feature allows us to chain multiple optionals together with the `?.` operator. Optional chaining provides an alternative way to call the `stringByRemovingPercentEncoding` method. The code now looks a lot cleaner and simpler.
*/






/*:
Great! You've completed this section. Here I just cover the basics of optional chaining. You can find further information about optional chaining in Apple's Swift guide.

If you're ready, click [Next](@next) to learn more...
*/
