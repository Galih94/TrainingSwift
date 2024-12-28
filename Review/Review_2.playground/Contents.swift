import Cocoa

/// `Functions` let you define re-usable pieces of code that perform specific pieces of functionality.
print("---Functions---")
func printFunction() {
    print("something")
}
printFunction()
func printFunction(_ text: String) {
    print(text)
}
printFunction("text something")
func printTextAndNumber(text str: String, number num: Int){
    print(str, num)
}
printTextAndNumber(text: "Hello number", number: 37)
func getCountCharacter(of str: String) -> Int {
    return str.count
}
getCountCharacter(of: "Hello world")
func getSquare(of num: Int) -> Int {
    num * num
}
getSquare(of: 5)
/// ---
/// `Optionals` is a kind of property that might have a value or might not using `?`
print("---Optionals---")
func getStatus(of str: String) -> String? {
    if str.isEmpty {
        return nil
    } else {
        return "healthy"
    }
}
getStatus(of: "")
getStatus(of: "galih")
if let status = getStatus(of: "" ) {
    print("status exist")
} else {
    print("status not exist")
}
let statusWithDefault: String = getStatus(of: "") ?? "No status exist"
let statusWithExclamation: String = getStatus(of: "hash")!
var str1: String! = nil
str1 = "str"
/// ---
/// `Optional chaining` is a kind of accessing optional property and the optional property might be inside optional onject
print("---Optional chaining---")
let str2: String? = "nil"
str2?.uppercased()
struct User {
    var id: String?
    init?(id: String?) {
        guard let id else {
            return nil
        }
        self.id = id
    }
}
let user = User(id: "")
user?.id?.uppercased()
/// ---
/// `Enumerations`  are a way for you to define your own kind of value in Swift.
print("---Enumerations---")
enum WeatherType {
    case sun, cloud, rain
    case wind(speed: Int)
    case snow(degreeCelcius: Double)
}
func getWeartherStatus(from weather: WeatherType) -> String {
    switch weather {
    case .sun:
        return "hot"
    case .cloud:
        return "just ok"
    case .rain:
        return "wet"
    case .wind( let speed):
        if speed > 20 {
            return "storm"
        } else {
            return "breezy"
        }
    case .snow(let degreeCelc) where degreeCelc < 10 :
        return "freezing"
    case .snow:
        return "cold"
    }
}
func knockKnockJokes(_ knocker: String?, punchLine: String) {
    print("who's there?")
    switch knocker {
    case .none:
        print("-silence-")
    case .some(let someone):
        print(someone)
        print(someone, "who?")
        print(punchLine)
    }
}
knockKnockJokes(nil, punchLine: "")
knockKnockJokes("Jo", punchLine: "Jo mama")
/// ---
/// `Structs`  are complex data types, meaning that they are made up of multiple values that create an object, the object is value type
print("---Structs---")
struct Person {
    let id: Int
    var name: String
    
    func greet() {
        print("hello, my name is", name)
    }
    
    mutating func changeName(to newName: String) {
        name = newName
    }
}
var galih = Person(id: 1, name: "galih")
var samodra = galih
samodra.name = "samodra"
print(galih.name)
print(samodra.name)
galih.greet()
galih.changeName(to: "g")
galih.greet()
/// ---
/// `Classes`  are another complex data types similar to structs, but have a number of important differences, including  the object is reference type, no default initializer and have inheritance properties
print("---Classes---")
class People {
    let id: Int
    var name: String
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
    func action() {
        print("living")
    }
}

class Singer: People {
    var songs: [String]
    
    init(id: Int, name: String, songs: [String]) {
        self.songs = songs
        super.init(id: id, name: name)
    }
    
    override func action() {
        print("singing")
    }
}
/// ---
