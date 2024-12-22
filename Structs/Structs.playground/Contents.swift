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
