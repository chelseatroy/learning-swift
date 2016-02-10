//: [Previous](@previous)

/*:
## Arrays

An array is a fundamental data structure in computer programming. You can think of an array as a collection of data elements. For example, you can use an array to store a collection of computer peripherals. You may visualize the array like this: ￼

![Arrays illustrated](array-illustrated.png)

Each array element is identified or accessed by an index. An array with 5 elements will have indices from 0 to 4. In Swift, you can declare an array like this:

    var peripherals = ["Printer", "USB Drive", "Touchpad", "Mouse", "Speaker"]

You can access the element by using subscript syntax. For instance, you can access the first element of the array like this:

    peripherals[0]

Try to execute the code snippet below and see what you get.

    var peripherals = ["Printer", "USB Drive", "Touchpad", "Mouse", "Speaker"]
    peripherals[0]


*/




/*:
Please note that arrays in Swift are always clear about the types of values that they can store. For the `peripherals` array, you can only use it to store String values. You can't store both String and Int elements in the same array.

To modify an element in array, you can access the element by using subscript syntax and assign it with a new value. Here is an example:

    peripherals[2] = "Scanner"

Swift also allows you to modify a range of values using the `...` operator. Here is an example:

    peripherals[0...2] = ["Wireless keyboard", "Flash drive", "Scanner"]

The first three values will be replaced with the new values. The updated array will be like this:

    ["Wireless keyboard", "Flash drive", "Scanner", "Mouse", "Speaker"]

*/




/*:
To append new values to an array, all you need to do is call the `append` method:

    peripherals.append("3D Printer")

Alternatively, you can use the addition assignment operator (+=) to insert new values:

    peripherals += ["3D Printer"]

*/






/*:
You can iterate over the whole array by using `for-in` loop. Here is an example:

    var peripherals = ["Printer", "USB Drive", "Touchpad", "Mouse", "Speaker"]
    for item in peripherals {
        print(item)
    }

*/


/*:
## Dictionaries

Similar to arrays, dictionaries allows you to store a collection of values. What's more is that you can assign each of the values with a unique key. Dictionaries are particularly useful when you need to look up values based on their identifier. 

For example, you want to store a collection of stock codes and company names. You can create a dictionary like this:

![Dictionaries illustrated](dictionary-illustrated.png)


Each company name is associated with a key, which is the stock code. To create a dictionary in Swift, you use the following syntax:

    var dict = [key1: value1, key2: value2, key3: value3]

As an example, here is how you can create the dictionary for the stocks.

    var stocks = ["AAPL": "Apple", "TSLA": "Tesla Motors", "GOOG": "Google", "AMZN": "Amazon.com", "BABA": "Alibaba Group"]
*/




/*:
To retrieve the associated value of a particular key, you can use the subscript syntax, which is very similar to that in arrays:

    stocks["GOOG"]

Dictionaries in Swift is very flexible that you can easily insert a new key/value pair to an existing dictionary. You can also use the subscript syntax to add a new item:
    
    stocks["FB"] = "Facebook"

Try to execute the code below and see what you will get:

    var stocks = ["AAPL": "Apple", "TSLA": "Tesla Motors", "GOOG": "Google", "AMZN": "Amazon.com", "BABA": "Alibaba Group"]
    stocks["GOOG"]
    stocks["FB"] = "Facebook"
    stocks
*/






/*:
You can iterate over the items in a dictionary with a `for-in` loop. Here is an example:

    for (stockCode, company) in stocks {
        print("\(stockCode): \(company)")
    }

*/






/*:
If you just want to iterate over the keys/values of a dictionary, you can just call the `keys` or `values` property, which returns you an array of keys/values.


    for stockCode in stocks.keys {
        print(stockCode)
    }

    for company in stocks.values {
        print(company)
    }

*/


/*:
Great! You've completed this section. If you're ready, click [Next](@next) to learn more...
*/

