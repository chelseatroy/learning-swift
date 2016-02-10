//: [Previous](@previous)

/*:
# Generics

The concept of Generics is not new and has been around for a long time in other programming languages like Java. But for iOS developers, you may be new to Generics.

## Generic Functions
Generics are one of the most powerful features of Swift and allow you to write flexible functions. So what are Generics exactly? Well, let's take a look at an example. Suppose you're developing a process function:

    func process(a: Int, b: Int) {
        print(a)
        print(b)
    }

The function accepts two integer values for further processing. What if you need to take in other type of values like Float? You probably write another function like this:

    func process(a: Float, b: Float) {
        print(a)
        print(b)
    }

All these two functions look very similar. Assuming the bodies of the functions are identical, the main difference is the types of inputs they take in. With Generics, you can simplify them into one generic function that handles multiple input types:

    func process<T>(a: T, b: T) {
        print(a)
        print(b)
    }

Now it defines a placeholder type instead of an actual type name. The <T> after the function name indicates that this is a generic function. For the function arguments, the actual type name is replaced with a generic type T.

You can call the process function in the same way. The actual type to use in place of T will be determined each time the function is called.

Try to run the following code and what you get:

    func process<T>(a: T, b: T) {
        print(a)
        print(b)
    }

    process(12, b: 12)

Now replace the call with this:

    process("This is a", b: "This is b")

The function still works for parameters of type String.
*/







/*:

## Generic Functions with Type Constraints
Let's take a look at another example. Suppose you're writing another function to compare if two integer values are equal.

    func isEqual(a: Int, b: Int) -> Bool {
        return a == b
    }

If you need to compare other types of value such as String, you'll write another function like this:

    func isEqual(a: String, b: String) -> Bool {
        return a == b
    }

With Generics, you'll combine the two functions into one:

    func isEqual<T>(a: T, b: T) -> Bool {
        return a == b
    }

*/





/*:

Again, we use T as a placeholder of the value types. But if you run the code, the function will not compile. The problem lies with the `a == b` equality check. 

![Error in the == operator](playgrounds-err-isequal.png)

Though the function accepts values with any types, not every type can support the equal to operator (`==`). This is why Xcode indicates an error. In this case, you need to apply a type constraint for the generic function.

    func isEqual<T: Equatable>(a: T, b: T) -> Bool {
        return a == b
    }

You write type constraint by placing a protocol constraint after a type parameter's name, separated by a colon. Here the Equatable is the protocol constraint. In other words, the function will only accept values that support the Equatable protocol.

In Swift, it comes with a standard protocol called `Equatable`. For any types conforming to the Equatable protocol, they support the equal to (==) operator. All standard types like String, Int, Float support the Equatable protocol.

You can test the code below again. The function should now work:

    func isEqual<T: Equatable>(a: T, b: T) -> Bool {
        return a == b
    }

    isEqual(100, b: 200)

*/



/*:

## Generic Types
You are not limited to use Generics in functions. Swift allows you to define your own generic types. This can be custom classes or structure. The built-in Array and Dictionary are examples of generic types.

Let's take a look at the below example:

    class IntStore {
        var items = [Int]()

        func addItem(item: Int) {
            items.append(item)
        }

        func findItemAtIndex(index: Int) -> Int {
            return items[index]
        }
    }

The IntStore class is a simple class to store an array of Int items. It provides two methods for:

* Adding a new item to the store
* Returning a specific item from the store

Apparently, the `IntStore` class supports Int type items. Wouldn't it be great if you can define a generic `ValueStore` class that manages any type of value. Here is the generic version of the class:

    class ValueStore<T> {
        var items = [T]()

        func addItem(item: T) {
            items.append(item)
        }

        func findItemAtIndex(index: Int) -> T {
            return items[index]
        }
    }

Like what you have learned in the Generic functions section, you use a placeholder type parameter (T) to indicate a generic type. The type parameter (<T>) after the class name indicates the class is a generic type.

To instantiate the class, you write the type to be stored in the `ValueStore` within angle brackets.

    var store = ValueStore<String>()
    store.addItem("This")
    store.addItem("is")
    store.addItem("generic")
    store.addItem("type")
    let value = store.findItemAtIndex(1)

You can call the method the same way as before.

*/





//: [Next](@next)
