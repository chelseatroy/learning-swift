//: [Previous](@previous)
    
/*:
## Guard

Swift 2 introduces the guard keyword. According to Apple's documentation, guard is described like this:

>A guard statement, like an if statement, executes statements depending on the Boolean value of an expression. You use a guard statement to require that a condition must be true in order for the code after the guard statement to be executed.

Before I further explain the guard statement, let's go straight to the following example:

    struct Article {
        var title:String?
        var description:String?
        var author:String?
        var totalWords:Int?
    }

    func printInfo(article: Article) {
        if let totalWords = article.totalWords where totalWords > 1000 {
            if let title = article.title {
                print("Title: \(title)")
            } else {
                print("Error: Couldn't print the title of the article!")
            }
        } else {
            print("Error: Couldn't print the total word count!")
        }
    }

    let sampleArticle = Article(title: "Swift Guide", description: "A beginner's guide to Swift 2", author: "Simon Ng", totalWords: 1500)
    printInfo(sampleArticle)
*/





/*:

In the above code, we create a `printInfo` function to display the title of an article. However, we will only print the information for an article with more than a thousand words. As the variables are optionals, we use `if let` to verify if the optional contains a value or not. If the optional is `nil`, we display an error message. If you execute the code in Playgrounds, it should display the title of the article.

In general, the `if-else` statements follow this pattern:

    if some conditions are met {
        // do something
        if some conditions are met {
            // do something
        } else {
            // show errors or performs other operations
        }
    } else {
        // show errors or performs other operations
    }

As you may notice, if you have to test more conditions, it will be nested with more conditions. There is nothing wrong with that programmatically. But in terms of readability, your code will get messy if there are a lot of nested conditions.

This is where the `guard` statement comes in. The syntax of guard looks like this:

    guard else {
        // what to do if the condition is not met
    }
    // continue to perform normal actions


If the condition, defined in the `guard` statement is not met, the code inside the else branch is executed. On the other hand, if the condition is met, it skips the `else` clause and continues the code execution.

If you rewrite the sample code using `guard`, it is a lot cleaner:

    func printInfo(article: Article) {
        guard let totalWords = article.totalWords where totalWords > 1000 else {
            print("Error: Couldn't print the total word count!")
            return
        }
    
        guard let title = article.title else {
            print("Error: Couldn't print the title of the article!")
            return
        }
        
        print("Title: \(title)")
    }

*/








/*:
Great! You've completed this section. With guard, you focus on handling the condition you don't want. Furthermore, it forces you to handle one case at a time, avoiding nested conditions. Thus, the code is cleaner and easier to read.

If you're ready, click [Next](@next) to learn more...
*/

