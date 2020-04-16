protocol Printable {
    func printSelf()
}

protocol Writable {
    var levelLeft: Int { get set }
    var color: String { get set }
    var description: String { get }
}


protocol Usable: Printable, Writable {}

extension Writable {
    var description: String {
        "\(color): \(levelLeft)%"
    }
}

extension Printable {
    func printSelf() {
        print("Hello I printed")
    }
}

struct Pen: Usable {
    var levelLeft: Int
    var color: String
    var isCapOn: Bool
}

extension Pen: Printable {
    func printSelf() {
        print("Pen: ", terminator: "")
    }
}

struct Pencil: Printable, Writable {
    var levelLeft: Int
    var color: String
    var other: Pen
}

extension Pencil: Equatable {
    static func == (lhs: Pencil, rhs: Pencil) -> Bool {
        lhs.color == rhs.color
    }
}



protocol Something {
    func handle(value: String) -> Int
    var handler: (String) -> Int { get set }
}






