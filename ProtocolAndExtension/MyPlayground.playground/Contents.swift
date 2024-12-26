import Cocoa

/// `Protocol` is way to describe what are the properties and methods an object should have
print("---Protocol---")
protocol Identifiable {
    var id: String { get set }
}
struct Gamer: Identifiable {
    var id: String
}
class Player: Identifiable {
    var id: String = "AnonPlayer"
}

func displayId(_ obj: Identifiable) {
    print("id is", obj.id)
}
displayId(Gamer(id: "AnonGamer"))
displayId(Player())
/// ---
/// `Protocol inheritance` is when 1 protocol inherit from another protocol
print("---Protocol inheritance---")
protocol Payable {
    func pay()
}
protocol Learnable {
    func learn()
}
protocol Pricable {
    func getPrice() -> Int
}
protocol Courseable: Payable, Learnable, Pricable {
    var type: String { get }
}

struct OnlineCourse: Courseable {
    var type: String
    
    func pay() {}
    
    func learn() {}
    
    func getPrice() -> Int { return 0 }
}
/// ---
/// `Extension` is a way to add method or computed properties to existing types
print("---Extension---")
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    func squared() -> Int {
        return self * self
    }
}
/// ---
/// `Protocol Extension` let's all object that conform to the same protocol have new method that can be used
print("---Protocol Extension---")
protocol Namable {
    var name: String { get }
    func getNameCount() -> Int
}
protocol Human: Namable {
    var race: String { get }
}
protocol Cat: Namable {
    var breed: String { get }
}
extension Namable {
    func getNameCount() -> Int {
        return name.count
    }
    func printName() {
        print("my name is", name)
    }
}
struct Indonesian: Human {
    var race: String = "south east asian"
    var name: String = "Anon Indonesian"
}
struct PersianCat: Cat {
    var breed: String = "persian cat"
    var name: String = "anon persian cat"
}
let galih = Indonesian()
galih.printName()
let kucing = PersianCat()
kucing.printName()
///  ---
/// `Protocol-oriented programming` is a way to implement code around protocol and protocol extension
print("---Protocol-oriented programming---")
protocol Workable {
    var salary: Int { get set }
    func getPaycheck()
}
extension Workable {
    func getPaycheck() {
        print("your salary is", salary)
    }
}
struct Worker: Workable {
    var salary: Int
}
let staff = Worker(salary: 10_000_000)
staff.getPaycheck()
/// ---
