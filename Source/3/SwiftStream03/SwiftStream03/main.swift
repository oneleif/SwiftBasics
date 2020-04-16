import Foundation

let sema = DispatchSemaphore(value: 0)

// Codable

struct Player: Codable {
    var name: String
    var level: Int
    let gameClass: String
    let items: [String]
    
    enum CodingKeys: String, CodingKey {
        case name, level, items
        case gameClass = "class"
    }
}

struct World: Codable {
    let players: [Player]
}

// Get Data from the web

let url = URL(string: "https://gist.githubusercontent.com/0xLeif/be067c39d1eff34a8c931bbade58b8c2/raw/80a40071fac608dd4188526b46d19b57ab8b7117/gistfile1.txt")!

let request = URLRequest(url: url)

let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
    if let error = error {
        print(error)
    }
    
    guard let data = data,
        let response = response else {
            sema.signal()
            return
    }
    
    print(response)
    
    let world = try! JSONDecoder().decode(World.self, from: data)

    print(world.players)
    sema.signal()
}
// Combine
task.resume()
print("Going to End!")
sema.wait()

print("Ended!")


enum Values {
    case hot, cold, warm
}

var dict: [Values: Float] = [.cold: 345.656]

dict[.warm] = 5.56765

print(dict[.hot])
