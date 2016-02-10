/*:
# Constants vs Variables
Like most programming languages, Swift uses variables to store values. In Swift, you declare variables with the `var` keyword and constants using the `let` keyword.

These are the two keywords you need to know about variable and constant declarations. When you want to store a value that is unchanged, you use the `let` keyword to declare a constant. On the other hand, you use the `var` keyword to declare a variable for storing a value that can be changed.

Let's take a look an example.
*/

var message1:String = "Why learn Swift?"
let message2:String = "I want to build great apps!"

/*:
As you type your code, Playground immediately interprets your code. You should the results on the right pane like this:

![Playgrounds Output](playgrounds-output.png)

This is the power of Playgrounds. You can view the results in real-time, and this makes learning interactive 😃

In the above code, you first declare a variable named `message1` and give it an initial value of *"Why learn Swift?"*. Then you declare a constant named `message2` and set the initial value to *"I want to build great apps!"*

The keyword right after the colon indicates the type of the variable or constant you're declaring. In the example, both `message1` and `message2` are of type `String`. In Swift, the `String` type is used for representing text or a sequence of characters. We'll further talk about data types later. For now, let's focus on understanding the difference between `var` and `let`.

Let's see what happens when you change their values. Type the following code in the blank area below:

    message1 = "Why not learn Swift?"
    message2 = "I can't think of a reason yet."
*/




/*:
You should be able to assign the new value (*"Why not learn Swift?"*) to `message1`. However, Playgrounds should show an error for `message2` indicating that it could not assign the value. In Xcode, you can always click the red indicator to display the error details:

![Failed to assign the value](let-vs-var-error.png)

Sometimes, Xcode can even suggest you the solution just like this example. At the very beginning, `message2` was declared as a constant. This is the reason why you couldn't assign it with a new value. To fix the error, you can accept Xcode's suggestion and change `message2` from `let` to `var`.

If you scroll back to the very beginning, Xcode changes `message2` to a variable. 

Let's check the result again.
*/

message1
message2


/*:
Great! You've fixed the error. Now `message2` is updated with value *"I can't think of a reason yet."*
*/

/*:
# Data Types

Next, let's declare three constants:

    var pricePerBook:Double = 29.5
    let bookSalesPerDay:Int = 100
    let question:String = "How many books will be sold each week?"
*/

var pricePerBook:Double = 29.5
let bookSalesPerDay:Int = 100
let question:String = "How many books are sold each week?"


/*:
The third line of code is simple. You declare a constant of type `String` with an initial value of *"How many books are sold each week?"*

The first and second line of code may be new to you. They look very similar to the third one, but both constants are of a different type. Swift supports various types such as String. The `String` type, as mentioned, represents a sequence of characters and provides a great way to work with text. 

What about numbers?

When talking about numbers, we normally deal with two types of numbers: integers (e.g. 100) and decimal numbers (e.g. 29.5). Integers are whole numbers without a fractional component. You use the `Int` keyword to specify a variable of the type integer. Swift provides both `Float` and `Double` types to represent a decimal number. `Double` has a precision of at least 15 decimal digits, while `Float` is less precise. In general, if you do not have any preferences, simply use `Double` for numbers with a fractional component.

If you read the first two lines of code again, they can be read like this:

1. Declare a variable named `pricePerBook` with the type `Double` and set its initial value to `29.5`.
2. Declare a constant named `bookSalesPerDay` with the type `Int` and set its initial value to `100`.
*/

/*:
# Type Inference

Now you should have some ideas of variable declaration. In Swift, you can make the variable declaration even simpler. It's not mandatory to annotate variables with type information. Swift comes with a great feature known as *Type Inference*. This feature enables the compiler to deduce the type automatically by examining the values you provide in the variable.

Here is an example:

    let count = 10
    var price = 23.55
    var myMessage = "Swift is the future!"

Try to type the above code below. It will not give you any errors as the type of the variable/constant is automatically deduced.

* `count` is automatically inferred to be of type `Int` as `10` is an integer.
* `price` is inferred to be of type `Double` as the value contains a fractional component.
* `myMessage` is inferred to be of type `String`.

*/


/*:

With type inference, we can simplify the following code from:

    var pricePerBook:Double = 29.5
    let bookSalesPerDay:Int = 100
    let question:String = "How many books are sold each week?"

to:

    var pricePerBook = 29.5
    let bookSalesPerDay = 100
    let question = "How many books are sold each week?"

*/

//: Great! You've completed this section. Click [Next](@next) to continue.


