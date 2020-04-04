// Swift Basics

// Declaring Constants and Variables
let pi = 3.14

var name = "Leif"
name = "Bob"

var x = 0.0, y = 0.0, z = 0.0

// Type Annotations
let pi2: Double = 3.14

var name2: String = "Leif"
name2 = "Bob"

var x2: Double = 0.0

var age: Int
age = 4

// Printing Constants and Variables

print("Hello World!")
print("Name: \(name)")
print("Hello?", terminator: "")

// Comments

// signal';fdasf]asdasdasd

/*
  fdgsdfgsdfgsd
 */

// Semicolons

let cat = "🐱"; print(cat)

// Integer Bounds

let minValue = Int.min
let maxValue = Int.max


let sum = 5 + 0.5

let a: Int = 5
let b: Double = 0.5
let sum2 = Double(a) + b

// Type Aliases

typealias AudioSample = UInt16
var sampleValue: AudioSample
sampleValue = 45

// Booleans

let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

let i = 1
if i == 1 {
    
}

// Tuples

let http404Error = (6354, "dfasdf", [42134])
let http404Error2 = (code: 6354, "dfasdf", [42134])
let (statusCode, _, array) = http404Error

let code = http404Error.0
let sc = http404Error2.code

// Optionals

let nonOptional: Int = 5
let optional: Int? = 7

let isOptionalNil: Bool = optional == nil

print(nonOptional)
print(optional ?? 0)

// Optional Binding

if let someUnwrappedValue = optional,
    let doubleValue = someUnwrappedValue as? Double {
    print(doubleValue)
} else {
    print("Value Not here?!")
}

// Error Handling

//func canThrowAnError() throws {
//    // this function may or may not throw an error
//    throw SomeError()
//}
//
//do {
//    try canThrowAnError()
//} catch { error in
//    print(error)
//}

// Defining and Calling Functions

func printSomething() {
    print("Something")
}
printSomething()


func greet() -> (Int?, String) {
    let greeting = "Hello!"
    return (nil, greeting)
}

let greetingMessage = greet()
greetingMessage.0

var someString: String {
    "Hello World!"
}
let val = someString
func oneliner() -> String {
    return "Hello World!"
}

let val2 = oneliner()


func test(_ name: String = "No Name") {
    print(name)
}


test()

func sum(values: Int...) -> Int {
    var sum = 0
    for value in values {
        sum += value
    }
    return sum
}


sum(values: 5, 6, 56,7, 7456,85785)


func add(a: Int, b: Int) -> Int {
    a + b
}

// a is 5/ Int
// b is 25/ Int
// return 30/ Int
add(a: 5, b: 25)

// (a: Int, b: Int)
// (Int,Int) -> Int

typealias MathFunction = (Int,Int) -> Int

var someFunction: MathFunction

someFunction = add

someFunction(5, 25)

func printMathResult(_ mathFunction: MathFunction,
                     _ a: Int,
                     _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}

printMathResult(someFunction, 10, 15)

func base() {
    func inner() {
    }
    
    inner()
}

let someClosure = { (x: Int) in
    print(x * 2)
}

someClosure(3)

let someArray = [1,2,3,4,5,6,7,8, 123,6345,345,6754,67, 45,648]

let sortArray = someArray.sorted(by: <)
1 == 5

func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}

someFunctionThatTakesAClosure(closure: {
    
})

someFunctionThatTakesAClosure {
    // trailing closure's body goes here
}

var dict = [Int: String]()

dict[5] = "hello"

print(dict[5])

// Enum

enum SomeEnum {
    case first(name: String)
    case second(id: Int, value: String)
    case third
}
let first = SomeEnum.first(name: "hdfgh")
let second = SomeEnum.second(id: 4, value: "34")
//print(SomeEnum.second)

switch second {
case .first(let name):
    print(name)
case .second(_, let value):
    print(value)
default:
    print("nomrhtin g")
}

// Structures and Classes

let someObject: (id: Int, name: String, age: Int) = (id: 4, name: "Leif", age: 354345)


// Protocal

protocol Talkable {
    func talk() -> String
}

struct User: Talkable {
    func talk() -> String {
        "\(name): Hello!"
    }
    
    var id: String
    var name: String
    var age: Int
    
    mutating func birthday() {
        age += 1
    }
}

var someUser: User = User(id: "43", name: "Bob", age: 76345)
someUser.birthday()

print(someUser)


class ClassUser: Talkable {
    func talk() -> String {
        "\(name): Hello!"
    }
    
    var id: String
    var name: String
    var age: Int
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
        age = 54
    }
    
    func birthday() {
        age += 1
    }
}

let us = ClassUser(id: "43", name: "fasd")

us.talk()
someUser.talk()

extension Talkable {
    func speak() {
        print("I am speaking!")
    }
}

us.speak()
someUser.speak()

extension String {
    var banana: String {
        // self == "My Name is..."
        "\(self) Banana!"
    }
}

let valueString = "My Name is...".banana

// Struct
// Valid Type
// Only Extend from Protocols

// Class
// Reference Type
// Extends from Protocols or other Classes

// $0

let doubledArray = [1, 2, 3, 4]
    .map { value in value * 2 }
print(doubledArray)


func somethingsadfa(value: Double) {
    
}


somethingsadfa(value: 34)
