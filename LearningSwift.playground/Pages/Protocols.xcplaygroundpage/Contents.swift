//: [Previous](@previous)

/*:
# Protocol Extensions
In Swift 1.2, you can use extensions to add new functionalities to an existing class, structure or enumeration. Say, you can add a new feature to the `String` class by using an extension:

    extension String {
        func contains(find: String) -> Bool {
            return self.rangeOfString(find) != nil
        }
    }

Not only can you create extensions for classes, Swift 2 allows developers to apply extensions to protocol types. Prior to Swift 2, protocols contain only method and property declarations. You’re required to provide your own implementation when adopting the protocols in a class. I believe you should be very familiar with protocol implementation if you’ve used UITableView before.

    class MyViewController: UITableViewDataSource, UITableViewDelegate {
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // Return the number of rows
        }

        .
        .
        .
    }

With protocol extensions, you can add methods or properties to existing protocols. The is really powerful when you want to extend the protocol’s functionality. In addition to this, you can now provide default implementations for the methods defined in the protocols through extensions.

Let's take a look at this example:

    protocol Container {
        var items:[String] {get set}
        func numberOfItems() -> Int
    }

    class ToolBox: Container {
        var items:[String] = ["Glue Stick", "Scissors", "Hammer", "Level", "Screwdriver", "Jigsaw"]

        func numberOfItems() -> Int {
            return items.count
        }
    }

    class PaperBag: Container {
        var items:[String] = ["Bagel", "Baguette", "Black bread"]

        func numberOfItems() -> Int {
            return items.count
        }
    }

    class Basket: Container {
        var items:[String] = ["Orange", "Apple", "Honeydew", "Watermelon", "Pineapple"]

        func numberOfItems() -> Int {
            return items.count
        }
    }

    var container:Container = ToolBox()
    print(container.numberOfItems())

We declare a protocol called `Container`. Inside the protocol, it has a method declaration called `numberOfItems`. For any class that adopts the `Container` protocol,  it must implement the method to return the total number of items in a container.

*/




/*:

In the above example, we have three classes to model a toolbox, a paper bag and a basket. Each class adopts the `Container` protocol to return the number of items stored in the specific container. If you run the code in Playgrounds, it prints out the number of items stored in the toolbox (i.e. 6). By using protocols, you can easily assign the `container` variable with another object that adopts the `Container` protocol:

    var container:Container = ToolBox()
    container = Basket()
    print(container.numberOfItems())

As you may notice, the implementation of the `numberOfItems` method in these classes are identical. Prior to Swift 2, you cannot provide a default implementation in the protocol. But now you can do that through protocol extensions:

    extension Container {
        func numberOfItems() -> Int {
            return items.count
        }
    }

With the default implementation, the three classes can be simplified like this:

    class ToolBox: Container {
        var items:[String] = ["Glue Stick", "Scissors", "Hammer", "Level", "Screwdriver", "Jigsaw"]
    }

    class PaperBag: Container {
        var items:[String] = ["Bagel", "Baguette", "Black bread"]
    }

    class Basket: Container {
        var items:[String] = ["Orange", "Apple", "Honeydew", "Watermelon", "Pineapple"]
    }

They all come with the default implementation of the `numberOfItems` method. In case the default implementation doesn’t fit your need, you can still override it. Here is an example:

    class Basket: Container {
        var items:[String] = ["Orange", "Apple", "Honeydew", "Watermelon", "Pineapple"]
        var bonusItems:[String] = ["Blueberry", "Blackcurrant", "Durian"]

        func numberOfItems() -> Int {
            return items.count + bonusItems.count
        }
    }
*/




/*:
Suppose you want to add a new method called `randomItem`, which randomly returns an item, to the protocol. In Swift 1.2, you would need to add the method to the `Container` protocol.

    protocol Container {
        var items:[String] {get set}
        func numberOfItems() -> Int
        func randomItem() -> String
    }

In this case, all the classes that adopt the `Container` protocol are required to change and provide the implementation of the `randomItem` method.

With the introduction of protocol extensions, you can easily add the new method to the  extension and all the classes that conform to the protocol can have the implementation for free.

    extension Container {
        func numberOfItems() -> Int {
            return items.count
        }

        func randomItem() -> String {
            let randomIndex = Int(arc4random_uniform(UInt32(items.count)))
            return items[randomIndex]
        }
    }

Isn't it great? Swift 2 greatly expands the reach of protocols. Here I just elaborate the basics of protocol extensions. You can further leverage the power of protocol-oriented programming that I am not going to cover in this article. If you’re interested, you can check out [this great WWDC video](https://developer.apple.com/videos/wwdc/2015/?id=408).

*/

