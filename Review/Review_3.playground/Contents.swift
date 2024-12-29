import Cocoa

/// `Properties` are variable/constant inside stuct/class or any object actually
print("---Properties---")
struct Person {
    var name: String
    var age: Int
    var pastAge: Int = 0
    var ageInTenYears: Int {
        get {
            return age + 10
        }
        set {
            pastAge = age
        }
    }
    var ageInFiftyYears: Int {
        return age + 50
    }
    var clothes: String {
        willSet {
            updateClothes("will change clothes \(clothes) to \(newValue)")
        }
        didSet {
            updateClothes("did change clothes \(clothes) from \(oldValue)")
        }
    }
    
    func updateClothes(_ msg: String) {
        print(msg)
    }
    
    func greet() {
        print("hi, my name is", name)
    }
}
var galih = Person(name: "galih", age: 29, clothes: "t-shirt")
galih.greet()
galih.clothes = "shirt"
print(galih.ageInTenYears, "and", galih.pastAge)
galih.ageInTenYears = 20
print(galih.ageInTenYears, "and", galih.pastAge)
galih.ageInTenYears = 15
print(galih.ageInTenYears, "and", galih.pastAge)
galih.ageInFiftyYears
/// ---
/// `Static properties and methods` are properties and methods that belong to a type, rather than to instances of a type
print("---Static properties and methods---")
struct Circle {
    static var phi = 3.14
    var radius: Double
}
let circle = Circle(radius: 2)
let phi = Circle.phi
print("keliling", (circle.radius * 2 * phi))
/// ---
/// `Access control`lets you specify what data inside structs and classes should be exposed to the outside world
/// `Public`: this means everyone can read and write the property.
/// `Internal`: this means only your Swift code can read and write the property. If you ship your code as a framework for others to use, they won’t be able to read the property.
/// `FilePrivate`: this means that only Swift code in the same file as the type can read and write the property.
/// `Private`: this is the most restrictive option, and means the property is available only inside methods that belong to the type, or its extensions.
print("---Access control---")
struct Toy {
    private var name: String
    public var type: String
}
struct Box {
    var toy: Toy
    
    func getToy() {
        print(toy.type)
//        print(toy.name)
    }
}
/// ---
/// `Polymorphism and typecasting` Because classes can inherit from each other (e.g. CountrySinger can inherit from Singer) it means one class is effectively a superset of another: class B has all the things A has, with a few extras. This in turn means that you can treat B as type B or as type A, depending on your needs.
print("---Polymorphism and typecasting---")
class Animal {
    var breed: String
    init(breed: String) {
        self.breed = breed
    }
    func desciptionBreed() {
        print("this animal is \(breed) breed")
    }
}
class Cat: Animal {
    var color: String
    init(color: String, breed: String) {
        self.color = color
        super.init(breed: breed)
    }
    override func desciptionBreed() {
        print("this cat animal is \(breed) breed")
    }
}
class Dog: Animal {
    var bark: String
    init(bark: String, breed: String) {
        self.bark = bark
        super.init(breed: breed)
    }
    override func desciptionBreed() {
        print("this dog animal is \(breed) breed")
    }
}
let bulldog = Dog(bark: "rrrr", breed: "bolldog")
let anggora = Cat(color: "white", breed: "anggora")
let terrier = Dog(bark: "woof", breed: "terrier")
var pets: [Animal] = [bulldog, anggora, terrier]
for pet in pets {
    pet.desciptionBreed()
    if let cat = pet as? Cat {
        print("cat color is", cat.color)
    } else if let dog = pet as? Dog {
        print("dog sound is", dog.bark)
    }
}
var dogAnimals: [Animal] = [bulldog, terrier]
for animal in dogAnimals {
    let dog = animal as! Dog
    print("dog sound1 is", dog.bark)
}
for dog in dogAnimals as! [Dog] {
    print("dog sound2 is", dog.bark)
}
for dog in dogAnimals as? [Dog] ?? [] {
    print("dog bark is", dog.bark)
}
/// ---
/// `Closures` can be thought of as a variable that holds code.
print("---Closures---")
var callback1: (() -> Void)?
callback1 = {
    print("called callback1 here")
}
print("start callback1 here")
callback1?()
var callback2: ((String) -> Void)?
callback2 = { (msg: String) in
    print("called callback2 with msg", msg)
}
print("start callback2 here")
callback2?("call callback2")
func callPerson(name: String, onCallBack:(String) -> Void) {
    print("start call", name)
    onCallBack("calling, \(name)")
}
func callPerson2(name: String, onCallBack1:(String) -> Void, onCallBack2:(String) -> Void) {
    print("start call", name)
    onCallBack1("calling, \(name)")
    onCallBack2("calling, \(name) ended")
    onCallBack1("calling, \(name) for second time")
    onCallBack2("calling, \(name) for second time ended")
}
print("start callPerson here")
callPerson(name: "galih") { msg in
    print(msg)
}
print("start callPerson2 here")
callPerson2(name: "samodra") { msg1 in
    print(msg1)
} onCallBack2: { msg2 in
    print(msg2)
}

/// ---
