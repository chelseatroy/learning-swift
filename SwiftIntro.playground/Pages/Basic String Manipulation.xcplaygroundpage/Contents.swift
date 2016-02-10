//: [Previous](@previous)

let bookSalesPerWeek = 1000
let greeting = "Hi Simon! "
let question = "How many books are sold each week?"

/*:
# String Concatenation

In Swift, you can easily combine two strings together by using the addition (+) operator. For example, you can concatenate `greeting` and `question` together like this:

    let newMessage = greeting + question
*/

let newMessage = greeting + question


/*:
Now let's answer the question. Your answer will be like this:

    We're doing pretty good. Each week we sell 1000 books.

The number of books sold is retrieved from `bookSalesPerDay`. So how can you create the string? It looks simple, right? You may create a new string like below:

    var answer = "We're doing pretty good. Each week we sell " + bookSalesPerWeek + " books."

Try to type the above code and see what you get.
*/


var answer = "We're doing pretty good. Each week we sell " + String(bookSalesPerWeek) + " books."


/*:
😮 Xcode shows you an error. If you click the error indicator, you will have something like this:

![String concatenation error](string-integer-concat-error.png)

We mentioned before that Swift is very strict on types. `bookSalesPerWeek` is of type `Int`. You can't concatenate a string with an integer. To make it work, you will need to convert `bookSalesPerWeek` to `String`. Rewrite the code like this:

    var answer = "We're doing pretty good. Each week we sell " + String(bookSalesPerWeek) + " books."

*/



/*:
You use `String()` to convert an integer to a string. Now that the three operands are of type `String`. So they can be concatenated together!
*/

/*:
# String Interpolation

Other than using String conversion, there is a better way to create a string with a combination of string and other values. The technique is known as String Interpolation. The same string can be created like this:

    answer = "We're doing pretty good. Each week we sell \(bookSalesPerWeek) books."

`bookSalesPerWeek` is wrapped in a pair of parentheses, prefixed by a backslash. When the string interpolation is evaluated to create the string, `\(bookSalesPerWeek)` is replaced by the actual value of `bookSalesPerWeek`.

Type the above code in the following area to experiement.
*/

answer = "We're doing pretty good. Each week we sell \(bookSalesPerWeek) books."

/*:
Inside the placeholder, it can be a variable or an expression. Here is an example:

    answer = "We're doing pretty good. This year we can sell \(bookSalesPerWeek * 52) books."

Type the above code in the following area and see what you get.
*/

answer = "We're doing pretty good. Each week we sell \(bookSalesPerWeek * 52) books."

/*:
# Printing Constants and Variables

So far so good? Now let's talk about printing a constant or variable.

In Playgrounds, you can type a variable/constant on a separate line to examine its value. The value is displayed in the Results sidebar.

Later when you start developing your app in Xcode, you can no longer do that. This is a feature in Playgrounds that lets you easily explore the language. In the actual development environment, if you want to print the value of variable, you will need to use the `print(_:)` function. The function prints the current value of the variable, followed by a newline, to an appropriate output (e.g. a log file).

Try to type this line of code in the blank area below:

    print(question)
*/
print(question)



/*:
You should see the following result in the sidebar:

![Result in the sidebar](print-function.png)

Note that there is a `\n` character appended at the end of the string. This character is a newline character. Other than viewing the result in the sidebar, Playgrounds provide two more options for you. At the right edge of the sidebar, you should notice two buttons. The button with an eye icon is the Quick Look button. Click the button and you can view the result like this:

![Quick look result](playground-quick-look.png)

Right next to the Quick Look button is the Results button. Clicking the Results button adds a result view right below the line of your code. If you change the value of the variable, the result view will display the value accordingly.

![Results view](playground-result-view.png)

Try it out yourself before moving on.

*/


//: Great! You've completed this section. Click [Next](@next) to learn more...

