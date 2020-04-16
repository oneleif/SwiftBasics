//
//
//
//struct A: Something {
//    var handler: (String) -> Int
//
//    func handle(value: String) -> Int {
//        return handler(value)
//    }
//}
//
//func xyz(value: String) -> Int {
//    print("Now it does")
//    return 8
//}
//let functionToDoThings = xyz
//let some = A(handler: functionToDoThings)
//
////let some = A { value in
////    print("Value: \(value)")
////    return 6
////}
//
//some.handle(value: "Hello")
//
//let (x, y) = (Int(readLine() ?? "0"), Int(readLine() ?? "0"))
//
//print(x, y)
//print(type(of: (x, y)))

let values = readLine()?.components(separatedBy: .whitespacesAndNewlines) ?? []

let valueOne = values.count > 0 ? Int(values[0]) : nil
let valueTwo = values.count > 1 ? Int(values[1]) : nil

print(valueOne ?? -1, valueTwo ?? -1)
