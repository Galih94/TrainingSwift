import Cocoa

/// `Class Initializer` unlike struct, class does not have default init so you have to creat init if there is property that has no default valued
print("---Class Initializer---")
class Cat {
    var name: String
    var color: String
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
}
let bleki = Cat(name: "Bleki", color: "Black")
/// ---
/// `Class Inheritance` class can inherit to new class so the new class contain properties and methods of the parent class
print("---Class Inheritance---")
class Dog {
    var name: String
    var breed: String
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
class Husky: Dog {
    init(name: String) {
        super.init(name: name, breed: "Husky")
    }
}
let husky = Husky(name: "Whitey")
print(husky.breed, husky.name)
/// ---
/// `Overriding method` is way to override method parent inside child class
print("---Overriding method---")
class Gecko {
    func makeNoise() {
        print("Tokkeeee")
    }
}
class LeopardGecko: Gecko {
    override func makeNoise() {
        print("sh----")
    }
}
let leopardGecko = LeopardGecko()
leopardGecko.makeNoise()
/// ---
/// `Final classes` is class that make a class cannot be inherited by other class
print("---Final classes---")
final class FriedRice {
    var amount: Int
    init(amount: Int) {
        self.amount = amount
    }
}
/// ---
/// `Copy objects` is different between struct and class, struct is value type means when copy object struct it will create ner object but class is reference type means when copy object class the new class will refer to the old class and whne new class change the old class follow
print("---Copy objects---")
class Food {
    var name: String = "rice"
}
var food1 = Food()
var food2 = food1
print("foods are", food1.name, "and", food2.name)
food2.name = "noodle"
print("foods are", food1.name, "and", food2.name)

struct Drink {
    var name = "water"
}
var drink1 = Drink()
var drink2 = drink1
print("drinks are", drink1.name, "and", drink2.name)
drink2.name = "juice"
print("drinks are", drink1.name, "and", drink2.name)
/// ---
/// `Deinit` is the opposite of `init` it will run on destroy object, class have deinit but struct don't
print("---Deinit---")
class Person {
    var name: String
    init(name: String) {
        self.name = name
        print(name, "is born")
    }
    func greet() {
        print("hello world")
    }
    deinit {
        print(name, "has died")
    }
}
for i in 1...3 {
    let person = Person(name: "number \(i)")
    person.greet()
}
/// ---
/// `Mutability` means the ability of object value to be changed, constant struct cannot change it's mutable property but constant class can change it's mutable property
print("---Mutability---")
class Singer {
    var name = "Anon"
}
let singer = Singer()
singer.name = "Famous Singer"
struct Pianist {
    var name = "Anon"
}
let pianist = Pianist()
//pianist.name = "Newbie" /// will be error here
/// ---
