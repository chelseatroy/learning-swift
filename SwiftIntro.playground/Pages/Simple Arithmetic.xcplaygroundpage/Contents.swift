//: [Previous](@previous)

var pricePerBook = 29.5
let bookSalesPerDay = 100
let question = "How many books are sold each week?"

/*:
# Simple Arithmetic

In the previous section, you declare the above variable. Okay, let's try to answer the question: *How many books are sold each week?*

It's just a simple arithmetic. You simply multiply `bookSalesPerDay` by 7 to get the total sales per week. To do that in code, you will write this:

    bookSalesPerDay * 7

Now type the above line of code in the blank area below and see what you will get.
*/

bookSalesPerDay * 7



/*:
As soon as you complete the code, Playgrounds will compute the answer and show you on the right pane:

![Book Sales Per Week](book-sales-per-day.png)

The asterisk (*) is one of the arithmetic operators in Swift for multiplication. The rest of the arithemetic operators are:

* Addition (+)
* Subtraction (-)
* Division (/)

Now suppose you want to increase the book price (`pricePerBook`) by 10. You write the code like this:

    pricePerBook = 29.5 + 10

Here you use the addition operator to do the addition. Once the result is computed, we update the `pricePerBook` variable with the new value.
*/

pricePerBook = 29.5 + 10

/*:
Okay, let's do one more calculation before moving onto another topic. Can you calculate the daily revenue based on the current book price (`pricePerBook`) and sales per day (`bookSalesPerDay`)?

Again, it's a simple calculation. You can multiply `pricePerBook` by `bookSalesPerDay` to get the daily revenue. Try to write the following code and see what you will get:

    let dailyRevenue = pricePerBook * bookSalesPerDay
*/







/*:
😮 Oops... what happened here? Playgrounds show you an error like this:

![Multiplication Error](double-int-multiplication-error.png)

`pricePerBook` is inferred to be of type `Double`, while `bookSalesPerDay` is of type `Int`. Xcode noticed that they are not of the same type. So it can't perform the multiplication. Swift is very strict on types. When you multiply a `Double` with an `Int`, Swift wonders what type the result should be:

* Should the result be an integer?
* Or should it be a double?

Swift can't decide it for you, so Xcode shows you an error. It's your responsibility to make sure both operands (i.e. `pricePerBook` and `bookSalesPerDay`) are of the same type. Obviously, you want to convert `bookSalesPerDay` from `Int` to `Double` to fix the error. To do so, change the line of the code to the following:

    let dailyRevenue = pricePerBook * Double(bookSalesPerDay)

You use `Double()` to convert an integer to a double. After the change, you should be able to calculate the daily revenue.

![Daily revenue](calculate-dailyrevenue.png)

*/
let dailyRevenue = pricePerBook * Double(bookSalesPerDay)


/*:
Now that you should understand how to do multiplication. Can you calculate the annual revenue?
*/
let annualRevenue = dailyRevenue * 365




//: Great! You've completed this section. Click [Next](@next) to learn about String manipulation.
