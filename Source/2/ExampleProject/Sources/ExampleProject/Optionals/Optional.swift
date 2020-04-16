
/*
 null
 nil
 */
class SomeClass {
    var a: String = ""
    var userName: String?
    
    func inputName() {
        print("What is your name?")
        userName = readLine()
    }
    
    func printName() {
        guard let name = userName else {
            return
        }
        
        print("Hello \(name)")
    }
}
