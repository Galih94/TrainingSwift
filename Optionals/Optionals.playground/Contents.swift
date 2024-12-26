import Cocoa

/// `Handling missing data` property can handle `nil` value, a state where there is no exist data
print("---Handling missing data---")
var num: Int?
print(num)
num = 1
print(num)
/// ---
/// `Unwrapping optionals` a way to check if property has value or no
print("---Unwrapping optionals---")
var text: String? = "1"
if let text = text {
    print("text is", text)
} else {
    print("no text")
}
/// ---
/// `Unwrapping with guard` use `guard` as a way to check if property has value or no
print("---Unwrapping with guard---")
func checkNameExist(_ name: String?) {
    guard let name else {
        print("name not found")
        return
    }
    print(name, "is exist")
}
checkNameExist(nil)
checkNameExist("nil")
/// ---
/// `Force unwrapping` use `!` to tell swift compiler that a nillable property is not nil
print("---Force unwrapping---")
var nullableNum: Int?
nullableNum = 5
let notNullable: Int = nullableNum!
print("notNullable is", notNullable)
/// ---
/// `Implicitly unwrapped optionals` are created by adding an exclamation mark `!` after your type name
print("---Implicitly unwrapped optionals---")
let num1: Int! = nil
/// ---
/// `Nil coalescing` operator unwraps an optional and returns the value inside if there is one by using `??`
print("---Nil coalescing---")
var num2: Int?
num2 = 1
let num3: Int = num2 ?? 0
print("Nil coalescing num is", num3)
/// ---
/// `Optional chaining` detect optionals inside object
print("---Optional chaining---")
var arr1: [String]? = ["a", "b"]
let firstVal = arr1?.first?.uppercased()
print("firstVal nullable is", firstVal)
/// ---
/// `Optional try` are created by adding an exclamation mark after your type name by using `try?`
print("---Optional try---")
enum PasswordError: Error {
    case weakPassword
}
func checkPassword(_ password: String) throws -> Bool {
    guard password != "123456" else {
        throw PasswordError.weakPassword
    }
    return password.count >= 6
}
/// use `try?`
do {
    if let val = try? checkPassword("1234") {
        print("checkPassword is", val)
    } else {
        print("password is weak")
    }
} catch {
    print("error is", error)
}
/// use `try!`
do {
    let val = try! checkPassword("1234567")
    print("checkPassword is", val)
} catch {
    print("error is", error)
}

/// ---
/// `Failable initializers` are init that might fail to initialize object, this use `init?`
print("---Failable initializers---")

struct User {
    var id: String
    init?(id: String?) {
        if let id {
            self.id = id
        } else {
            return nil
        }
    }
}
let user1 = User(id: nil)
let user2 = User(id: "nil")
print("user1 is", user1)
print("user2 is", user2)
/// ---
/// `Typecasting` check if object conform to protocol or inherit other object by using `as?`
print("---Typecasting---")
class Animal {}
class Fish: Animal {}
class Dog: Animal {
    func barking() {
        print("woof")
    }
}
let animalArr = [Fish(), Dog(), Fish(), Dog(), Dog(), Fish()]
for animal in animalArr {
    if let dog = animal as? Dog { // typcast as dog
        dog.barking()
    }
}
