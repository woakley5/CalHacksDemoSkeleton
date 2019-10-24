# Guess The Word Skeleton

Todo:
* Implement all missing methods marked with //TODO
* Complete storyboard
* Initalize CocoaPods (`pod init`)
* Install ` pod 'ConfettiView'`
* Implement ConfettiView

Finished version here: https://github.com/woakley5/CalHacksDemo

iOS Development

![](https://lh5.googleusercontent.com/5PtGFErXUHtKlLiFL-6YzxToJMSkNkysP_PPf9xQcSWxsII--aNNfqVQWbHFlbU4xJCu4F99CHzd4zJ28Y0XmyUeJ3kHQA8sgD7B6epsAL1yiV1ETCa54ZskesQQ9_iTqh2fjKBc)



MDB Presents: Intro to iOS Development through Swift & XCode
Swift Language Basics: 
Variables
- Swift has two types of basic containers for data. Variables (denoted by the var keyword) can contain mutable data, meaning that it can change over the course of your program’s runtime. Constants (denoted by the let keyword) are set upon initialization and cannot be changed once they are set.
- Variables types in swift are inferred. This means that it is not required to assign a type, as you have to in languages like C or Java. For example if you declare a variable like this:
            var aNumber = 100
            aNumber will forever be of type Int.
Optionals
- Optionals (denoted with a ?) are a special type of variable in Swift. Normally, variables cannot be assigned to nil. Optionals allow this to happen. For example if we declare some variables like this:
            var aFloat: Float?
            var aDouble: Double!
            aFloat can contain nil while aDouble being set to nil would cause a compile-time error
- Optionals can be “force unwrapped” (the value will be “force read”) by adding an exclamation point at the end (e.g. aFloat!)
- Note: Xcode will frequently propose unwrapping an optional to fix a variety of common issues. This could lead to infamous “Swift unexpectedly found nil while unwrapping an optional value” errors.
    - We can avoid these force unwrap issues by using something like an if let statement. The structure is as follows:
            var optionalName: String? = "John Appleseed"
            if let name = optionalName {
                print("Hello, \(name)")
            }
            In this example, “Hello, John Appleseed” will only be printed if optionalName is not null. 
Functions
- Functions in Swift are structured in a very clear format. A basic function signature will follow the structure as follows:
            func lookAtThis(number: Int) -> String
            This is a function called “lookAtThis” with a single argument “number” of type Int. It will return a variable of type String.
- Functions can have as many arguments as you would like. Usually the argument label is required when you call the function unless you prefix it with an _ when it is declared for example: 
            func lookAtThis(_ number: Int) -> String
Arrays & Dictionaries
- Arrays syntax in swift is very similar to other languages. An array of numbers could be declared like this:
            let oddNumbers = [1, 3, 5, 7, 9, 11, 13, 15]
- Again, similarly to other programming languages, the syntax for accessing elements of the array is very simple. Just use something like oddNumbers[2] to get the 3rd element in the array (in this case that would be 5).
- Dictionaries are ways of storing data indexed by string keys. They are declared like this:
            var interestingNumbers = ["primes": [2, 3, 5, 7, 11, 13, 17], "triangular": [1, 3, 6, 10, 15, 21, 28], "hexagonal": [1, 6, 15, 28, 45, 66, 91]]
            If we wanted to access the array “primes”, we would use the statement interestingNumbers["primes"], because the “primes” array is stored under the key “primes”.
Loops
- While statements are the same as any other programming language. They are used as such:
            while aBoolean {
              // do something
            }
            This while loop will continuously run until aBoolean becomes false.
- For loops take on a slightly unique syntax in Swift. An example for loop is as follows:
            for uni in universities{
              //do something with uni
            }

This for loop will iterate over every element in the list universities.

- Let’s say we want to iterate over a range of numbers instead. We would this syntax to do so:
            for n in 1...5 {
                print(n)
            }

This will print out 1 2 3 4 5. Note that this is inclusive of the number 5. 

- If we want to iterate up to, but not including 5, we would write it as below:
            for n in 1..<5 {
                print(n)
            }

This will print out 1 2 3 4.


iOS Development Basics

 

The Storyboard
- From the Apple Documentation: A storyboard is a visual representation of the user interface of an iOS application, showing screens of content and the connections between those screens. 
- Creating elements is as simple as: 
| XCode 10+                                                                                                                                                                       | XCode <10                                                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![](https://lh5.googleusercontent.com/MzaolVnZZFjzE1HwBz-fQv2yo63i1THr146W-M0dabLj5NHGYwq4vM4hdNaq1tKfQy-X9y-FRk1TNmC_CHNP42qF6E4fKrr3L3RLQQMgI-_GN9OA6STBiLLVAv7zJuq72QAQoJPv) | ![](https://lh5.googleusercontent.com/yJQvOhRKh-unNC_IR0xNVw32DxiRDQTXU1KORTWC_pts-8Sp3ko83WM7YztYBFY60HaExo0vGelvGoruP2AOc3vZWJooi8rn-EDIrIpIQzyNKrY88Z2nYA6MyCvaKqGzOfQgDuDf) |

 

UIKit
- These are all of the elements you can create and drop into your Storyboard.
- Any time you see the letters “UI” before a particular element, that means it comes from the UIKit library.
- You import it at the top of almost every file.
- Includes examples like: 
| UIKit Element          | Purpose                                                                                                                                               |
| ---------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| UIButton               | You want to be able to click something and make a “target” function run?                                                                              |
| UITextField            | You want to be able to take text input from the user?                                                                                                 |
| UILabel                | You want to be able to display static text to the user?                                                                                               |
| UIImageView            | You want to show the user an Image?                                                                                                                   |
| UIViewController       | You want to show the user a screen?                                                                                                                   |
| UINavigationController | You want to add a navigation bar to the top of your View Controller? You want to keep track of view controllers that the user has previously visited? |

 

- You can drag and drop each of these into the storyboard as outlined in “The Storyboard” section.
- Note that in order to work with these objects in your code, need to create IBOutlets (by control clicking on the item in the storyboard and dragging to your code)

 

![](https://lh4.googleusercontent.com/533UeC9I025RJ1KRY9xyUtE-zGiKS9EGjJrAfGTT1vSukyewfls3jUk4HIF7WOPvOtbcrkQW1H3TRzT0Rggql3gbXSIzCw-ld9ipF50OTT25KBV6RpCMzpQJmVFG7Visaz3cxhqB)


 

View Controllers
- These are the building blocks of an iOS Application. They represent what pops up on each particular screen. 
    1. If you know web development, each ViewController is like a particular HTML document that can be rendered to represent a particular webpage
- How to create them: 
1. Drag a “ViewController” object into the storyboard
2. Create a corresponding “CocoaTouchClass” file (this is an option that comes up when you click “New File”). The file should be in the following format:  
            class MyViewController: UIViewController {
                func viewDidLoad() {}
            }
1. Connect the object in the storyboard to your code by naming the “Class” file for each Storyboard object.
- How to run code: 
    1. Simple: Write your code in the viewDidLoad function that comes default whenever you create a new Cocoa Touch Class File that is a subclass of UIViewController.
- How to move to a different ViewController: 
    1. Create a “segue” in the storyboard by clicking Control + Clicking on the VC in the storyboard, and pointing it to a different VC.
![Image result for creating a segue gif storyboard](https://lh6.googleusercontent.com/-4aKqs1GcdPfu7kQMaGRBfGSqZXCf_AEY7MrQ-26iQqjscNTVpO5WYn2nZ7Wkj6xIl3Y78U8rDIE7ov4vwF0yomPlVfy96VkW52ecwNpNkmhSF5y5Cl_yUfakkV6V24mROEeI-2H)

    2. Run performSegue(withIdentifier: “firstSegue”, sender: self)in the code somewhere.

 

Cocoapods (optional)
- This is how you use third party libraries effectively with Swift & Xcode
- How to set them up: 
1. cd into your project repository and type pod init
    1. If you get an error, make sure you have cocoapods downloaded by running the command sudo gem install cocoapods
2. A new Podfile should appear
3. Type into that Podfile the names of the Cocoapods you want to use and write pod install
- Now you can use any of the millions of cocoapods listed here: https://libraries.io/cocoapods
- Make sure you work inside the .xcworkspace not the .xcproj!


Further Resources

Link to Download XCode:
https://itunes.apple.com/us/app/xcode/id497799835?mt=12
Link to Apple Documentation on UIKit:
https://developer.apple.com/documentation/uikit
Link to the Presentation:
https://docs.google.com/presentation/d/1LpJk9HiXlvGzKdtt173cT3qOsvIf7-m8dXZnyNHpAHo/edit
Link to the Demo Project Skeleton: 
https://github.com/woakley5/CalHacksDemoSkeleton
Link to the Final Demo Project: 
https://github.com/woakley5/CalHacksDemo

Note: If you win anything using this info, both Will & Max have huge egos and would love to hear about, so send an email to maxmiranda@berkeley.edu :). 
