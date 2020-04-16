struct InvalidValue: Error {
    let message: String
    let value: Int
}

class SomeValue {
    var name: String?
    
    func inputName() throws -> String {
        print("What is your name?")
        var inputName: String? = "Leif"
        
        guard let name = inputName else {
            throw InvalidValue(message: "This is not a name!", value: 5)
        }
        
        self.name = name
        
        return name
    }
}
