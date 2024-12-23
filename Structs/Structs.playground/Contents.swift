import Cocoa

/// `Creating Structs` structs is a value type object container that contain properties and methods
print("\n---Creating Structs---\n")
struct User {
    var name: String
}
var user = User(name: "galih")
print(user.name)
user.name = "Samodra"
print(user.name)
/// ---
/// `Computed properties` is a property that has code to figure out it's value
print("\n---Computed properties---\n")
struct Gamer {
    let name: String
    var level: Int
    var status: String {
        return  level > 10  ? "Expert" : "Beginner"
    }
}
let galih = Gamer(name: "Galih", level: 100)
print(galih.status)
let samodra = Gamer(name: "Samodra", level: 1)
print(samodra.status)
/// ---
/// `Property observers` are code that is run on change property , be it before (willSet) of after (didSet) the value changed
print("\n---Property observers---\n")
struct Progress {
    var name: String
    var amount: Int {
        willSet {
            print("progress from \(amount)%")
        }
        didSet {
            print("progress to \(amount)%")
        }
    }
}
var progress = Progress(name: "Work out", amount: 0)
progress.amount = 20
progress.amount = 50
progress.amount = 1000
/// ---
/// `Methods` are functions inside object such as struct, enum and classes
print("\n---Methods---\n")
struct City {
    var population: Int
    var taxPercentage: Int
    var avgEarning: Int
    
    func getPredictionTaxes() -> Int {
        return (population * avgEarning * taxPercentage) / 100
    }
}
let jakarta = City(population: 1_000_000,
                   taxPercentage: 12,
                   avgEarning: 5_300_000)
print(jakarta.getPredictionTaxes())
/// ---
/// `Mutating methods` are methods that can change the property value inside structs
print("\n---Mutating methods---\n")
struct Person {
    var name: String
    
    mutating func removeName() {
        name = "Redacted"
    }
    
    mutating func eraseRemovedName() {
        if name == "Redacted" {
            name = "-"
        }
    }
}
var galih1 = Person(name: "Galih")
print(galih1.name)
galih1.removeName()
print(galih1.name)
galih1.eraseRemovedName()
print(galih1.name)
/// ---
/// `Properties and methods of strings` String is struct, so it has many properties and methods
print("\n---Properties and methods of strings---\n")
let string = "My name is Galih Samodra Wicaksono"
print(string.count)
print(string.hasPrefix("Ga"))
print(string.uppercased())
print(string.sorted())
/// ---
/// `Properties and methods of arrays` Array is struct, so it has many properties and methods
print("\n---Properties and methods of arrays---\n")
var names = ["Galih"]
names.append("Samodra")
print(names)
print(names.count)
print(names.firstIndex(of: "Samodra") ?? "")
print(names.sorted())
names.remove(at: 0)
print(names)
/// ---
/// `Initializers` Is a function of struct that run on create object struct
print("\n---Initializers---\n")
struct Player {
    var name: String
    var level = 0 // property with value does not need to be in init
    init() {
        self.name = "Anonymous"
    }
}
let player1 = Player() // it doesn't need to give param `name` same as `init` because `init` has no params
struct Worker {
    var name: String
}
extension Worker {
    init() { // set init in extension not replace default init struct that set all property values
        name = "NewBie"
    }
}
let worker1 = Worker(name: "Test")
let worker2 = Worker()
/// ---
/// `Refer to current instances` pointing to self object by using `self` key
print("\n---Refer to current instances---\n")
struct Student {
    var name: String
    init(name: String) {
        self.name = name // `self.name` is Student.name, `name` is from param `init(name: String)`
    }
}
/// ---
/// `Lazy properties` is a property that will be initialized only when needed
print("\n---Lazy properties---\n")
struct Origin {
    init() {
        print("Origin created")
    }
}
struct People {
    var name: String
    lazy var origin = Origin()
    init(name: String ) {
        self.name = name
    }
}
var galih2 = People(name: "Galih")
print("galih2 created")
print("galih2 origin is \(galih2.origin)") // `"Origin created"` will print after `"galih2 created"`
/// ---
/// `Static properties and methods` is a property is not storen on instace of object but inside the opject itself
print("\n---Static properties and methods---\n")
struct Disciple {
    static var count = 0
    var name: String
    init(name: String) {
        Disciple.count += 1
        self.name = name
    }
}
print("before", Disciple.count)
let galih3 = Disciple(name: "Galih3")
let galih4 = Disciple(name: "Galih4")
let galih5 = Disciple(name: "Galih5")
print("after", Disciple.count)
/// ---
/// `Access control` is a way to restrict and control the value of property/methods and how to access the property/methods
print("\n---Access control---\n")
struct KTP {
    private let id = UUID()
    func getId() -> String {
        return id.uuidString
    }
}
let ktp = KTP()
ktp.getId() // id can only be accessed by using getId(), ktp.id will not work
/// ---
