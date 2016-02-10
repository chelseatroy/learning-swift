//: [Previous](@previous)

/*:
# Control Flow

Regardless of the programming language you use, you have to deal with some sort of control flow. It's one of the important concepts in programming. So, what the heck is control flow? 

Suppose you're working on a new project for a client. Your client wants to encourage you to complete the project as soon as possible. So he suggests the following rewarding scheme:

* If you can complete the project within 3 months, you will get $10,000 bonus.
* If you can complete the project in 6 months, you will get $3000 bonus.
* There is no bonus if it takes more than 6 months for project completion.

This is an example of control flow. It's actually a basic decision-making process that determines what action will be taken, when a certain condition is matched.

In programming, the code is read by computer line by line from top to bottom. At certain line of code, you may need to make a certain decision. Flow control determines which block of code to be executed when a certain condition is matched. For example, if you translate the above scenario into code, it will be like this:

    let projectDurationInMonths = 3
    var bonus = 0
    if projectDurationInMonths <= 3 {
        bonus = 10000
    } else if projectDurationInMonths > 3 && projectDurationInMonths <= 6 {
        bonus = 3000
    } else {
        bonus = 0
    }

    print("You've got $\(bonus) bonus!")

*/

let projectDurationInMonths = 3
var bonus = 0
if projectDurationInMonths <= 3 {
    bonus = 10000
} else if projectDurationInMonths <= 6 {
    bonus = 3000
} else {
    bonus = 0
}

print("You've got $\(bonus) bonus!")

/*:
## If, else if, else Statements

In Swift, you use `if` to make conditionals. The syntax is like this:

    if <condition> {
        <what to do next if the condition is matched>
    }

The <condition> is a Boolean expression that evaluates to either `true` or `false`. If the expression evaluates to `true`, the block of code enclosed within a pair of curly brackets will be executed. In the above example, the first condition is `projectDurationInMonths <= 3`:

    if projectDurationInMonths <= 3 {
        bonus = 10000
    }

We test if `projectDurationInMonths` is equal to or less than 3. If it's `true`, we set the bonus to `10000`.

You can test multiple conditions in `if` statements. If the first condition doesn't match (in other words, the expression evaluates to `false`), you use `else if` to test another condition.

    if projectDurationInMonths <= 3 {
        bonus = 10000
    } else if projectDurationInMonths > 3 && projectDurationInMonths <= 6 {
        bonus = 3000
    }

In the above example, the condition specified in `else if` is that `projectDurationInMonths` must be larger than 3, and it must less than or equal 6. If the expression evaluates to `true`, the `bonus` is set to 3000.

Optionally, you can provide a `else` clause. If all the conditions specified in `if` and `else if` are not matched, the code block of `else` will be executed. In the above example, we simply set the bonus to zero.

    if projectDurationInMonths <= 3 {
        bonus = 10000
    } else if projectDurationInMonths > 3 && projectDurationInMonths <= 6 {
        bonus = 3000
    } else {
        bonus = 0
    }

*/

/*:
## Switch Statement

Other than `if`, you can use `switch` in Swift to control the program flow. If you rewrite the same example using `switch`, the code looks like below:

    switch projectDurationInMonths {
    case 0...3:
        bonus = 10000
    case 3...6:
        bonus = 3000
    default:
        bonus = 0
    }

    print("You've got $\(bonus) bonus!")

Type the code in the blank area below and see what you get.
*/

switch projectDurationInMonths {
case 0...3:
    bonus = 10000
case 3...6:
    bonus = 3000
default:
    bonus = 0
}

print("You've got $\(bonus) bonus!")

/*:
You should achieve the same result. Instead of using `if`, we just use `switch` to make conditionals. When using `switch`, you examine a specific value and compare it against different matching patterns.

In the above example, we want to consider `projectDurationInMonths` and compare it against different ranges of values. In a `switch` statement, each of the values or intervals to be compared is a *case*. Each *case* begins with the `case` keyword, followed by the value or interval to match.

To express a range of values in Swift, you can use the `...` shortcut. The first *case* checks if the value of `projectDurationInMonths` falls between 0 and 3. If yes, the value of `bonus` is set to `10000` and the execution of `switch` statement ends here. Otherwise, the execution continues. The second *case* checks if the value falls between 3 and 6. If it's a match, `bonus` is assigned with a value of 3000. Again, the execution ends here. In case `projectDurationInMonths` doesn't match any of the cases. The `default` case will be executed and `bonus` is set to zero.

Please take note that every `switch` statement must be exhaustive. In other words, you have to cover every possible values of the variable being compared. If you can't specify all cases explicitly, simply define a `default` case like what we did in the above example.

You may wonder what happen when you remove the `default` case. Try to remove the default case and see what you get.

    switch projectDurationInMonths {
    case 0...3:
        bonus = 10000
    case 3...6:
        bonus = 3000
    }

*/




/*:
Xcode shows you an error, telling you that `switch` statement must be exhaustive.

![Switch must be exhaustive.](switch-exhaustive.png)

`switch` in Swift is very powerful. Not only can you use it for numeric values, switch statements can handle strings too. Here is an example:

    let animal = "rabbit"
    switch animal {
    case "dog":
        print("🐶")
    case "cat":
        print("🐱")
    case "rabbit":
        print("🐰")
    case "panda":
        print("🐼")
    default:
        break
    }

The `break` keyword is new to you. In case you have nothing to perform for a particular case, you can simply use `break` to break out of matched case.

Type the above code in the blank area below and see what you get. Once complete, you can try to modify the value of `animal` to other values. Just play around with the code to better understand how `switch` works.

*/


/*:
## While and Repeat-while Loops

A `while` loop performs a block of code until it doesn't meet a certain condition. For example, you want to print a series of number from 1 to 10. You can have a while loop like this:

*/

var number = 1
while number <= 10 {
    print(number)
    number++
}

/*:
Swift 2 introduces a new control flow operator called `repeat-while`, which is to replace the classic `do-while` loop. `repeat-while` evaluates its condition at the end of each pass through the loop. If the condition is `true`, it repeats the block of code again. It exits the loop when the condition evaluates to `false`.

Here is an example:
*/

var i = 0
repeat {
    i++
    print(i)
} while i < 10


/*:
##for-in where Clauses

Another fundamental feature introduced in Swift 2 is the introduction of `where` clause for the `for-in` statement. You can now define a condition in a `for` loop using the `where` clause. When you loop through an array, for example, only those items that meet the criteria will be processed.


    let numbers = [20, 18, 39, 49, 68, 230, 499, 238, 239, 723, 332]
    for number in numbers where number > 100 {
        print(number)
    }

In the above example, it only prints out those numbers that are greater than 100. Try to copy and paste the code above here, see what you will get.
*/

let numbers = [20, 18, 39, 49, 68, 230, 499, 238, 239, 723, 332]
for number in numbers where number > 100 {
    print(number)
}


/*:
Great! You've completed this section. Now that you should some ideas about control flow. When you start building an app and write the actual code, you'll have many chances to use `if` and `switch` to control your program flow. Therefore, make sure you thoroughly understand the concept before moving onto the next section.

If you're ready, click [Next](@next) to learn more...
*/

