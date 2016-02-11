//: [Previous](@previous)

/*:
In programming, we use to group common tasks into functions. A function contains a chunk of code that performs a specific task.

Let's go straight into an example:
*/

var message1 = "What's a function?"
var message2 = "I don't know"

// Compare the length of message1 and message2
if message2.characters.count > message1.characters.count {
    print("message2 is longer than message1")
} else {
    print("message1 is longer than message2")
}

message1 = "Hey, let's code!"
message2 = "Great! Let's get started!"

// Compare the length of message1 and message2
if message2.characters.count > message1.characters.count {
    print("message2 is longer than message1")
} else {
    print("message1 is longer than message2")
}


/*:
In the above code, we first declare `message1` and `message2`, and compare the length of both strings. Later, we assign a new value for both `message1` and `message2`. Again, we compare their values and print the result accordingly.

As you can see, this group of statements is used for the comparison.

    if message2.characters.count > message1.characters.count {
        print("message2 is longer than message1")
    } else {
        print("message1 is longer than message2")
    }

Instead of repeating the same piece of code for each comparison, we can write a function for this specific task like this:

    func compare(message1:String, message2:String) {
        if message2.characters.count > message1.characters.count {
            print("message2 is longer than message1")
        } else {
            print("message1 is longer than message2")
        }
    }

To declare a function in Swift, you begin with the `func` keyword, followed by the function name. Optionally, you can specify arguments in the function call. The sample function takes in two string values.

Every time when we need to compare the length of two strings, you can now call the `compare` function like this:

    compare(message1, message2: message2)

In Swift, function parameters have both an external parameter name and a local parameter name. By default, the first parameter omits its external name, and the second and subsequent parameters use their local name as their external name. This is why you do not need to specify the external name for `message1`.

In case you do not want to use an external name for the second (or subsequent) parameter, you can put an underscore (_) before the parameter name like this:

    func compare(message1:String, _ message2:String) {
        if message2.characters.count > message1.characters.count {
            print("message2 is longer than message1")
        } else {
            print("message1 is longer than message2")
        }
    }

You can now call the method without external parameter names:

    compare(message1, message2)

*/



/*:
A function can return a value. Previously, we create a function without a return value. Let's modify the compare function a bit to return a value:

    func compare(message1:String, _ message2:String) -> String {
        if message2.characters.count > message1.characters.count {
            return "message2 is longer than message1"
        } else {
            return "message1 is longer than message2"
        }
    }

Instead of printing the comparion result directly, the function returns the result of type String. You indicate the function's return type with the return arrow `->`, which is followed by the name of the type to return.

You use the same syntax to call the function. Optionally you can store the return value to a variable/constant for further processing.

    let result = compare(message1, message2)
    print(result)

*/


/*:
Great! You've completed this section. Here we have a brief overview of functions. To learn more about functions in Swift, check out the official documentation at https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html. 

If you're ready, click [Next](@next) to learn more...
*/
