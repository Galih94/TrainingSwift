import Cocoa

/// `Variables and Constants` are properties that can store data `var` can change value but `let` cannot change value
print("---Variables and Constants---")
var prop1 = "hello" // not constant
prop1 = "world"
let name1 = "galih" // constant
/// ---
/// `Types of Data` such as `String`, `Int`, `Float`, `Double`, Bool
print("---Types of Data---")
var str: String
str = "test"
var str1: String = "test 1"
var str2 = "test 2"
var num: Int
num = 0
var longitude: Float
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333
var latitude: Double
latitude = -86.783333
latitude = -186.783333
latitude = -1286.783333
latitude = -12386.783333
latitude = -123486.783333
latitude = -1234586.783333
var checkVal: Bool
checkVal = true
checkVal = false
/// ---
/// `Operators` are symbols math formula such as  `+` to add,`-` to subtract, `*` to multiply,`/` to divide, `=` to assign value, and so on.
print("---Operators---")
var a = 10
a = a + 1
a = a - 1
a = a * a
var b = 10
b += 10
b -= 10
b *= 2
b /= 2
var c = 10
c %= 3
var tempStr = "hello " + "world"
var val1 = 5
var val2 = 10
var val3 = 10
val1 > val2
val1 < val2
val1 == val2
val3 == val2
val3 <= val2
val3 >= val2
var val4 = "hello"
var val5 = "Hello"
val5 == val4
val5.uppercased() == val4.uppercased()
val5 != val4
let negation = !(val5 != val4)
/// ---
/// `String Interpolation` is way to combining variables and constants inside a string.
print("---String Interpolation---")
var firstName = "Galih"
var lastName = "Samodra"
var age = 29
print("hello my name is \(firstName) \(lastName), and i'm \(age) years old, in another \(age) years i'll be \(age * 2) years old")
/// ---
/// `Arrays` let you group lots of values together into a single collection, then access those values by their position in the collection.
print("---Arrays---")
let numbers: [Int] = [1,2,3]
let alphabets = ["a","b","c"]
var anyArr: [Any] = ["a", "b", "c", 1, 2, 3]
anyArr + alphabets
anyArr += numbers
let emptyArray1: [Int] = []
let emptyArray2 = [Int]()
numbers[0]
/// `Dictionaries` are another common type of collection, but they differ from arrays because they let you access values based on a key you specify.
print("---Dictionaries---")
var dict1 = [String: String]()
var dict2 = ["key1": "value1"]
dict2["key1"]
dict2["key2", default: "no value"]
var dict3 = [String: Any]()
var dict4: [String: Any] = [:]
/// ---
/// `Conditional statements` make statement and execute code only if statement is fulfilled.
print("---Conditional statements---")
let isBoring: Bool? = true
if isBoring == true {
    print("reading")
} else if isBoring == nil {
    print("i don't know")
} else {
    print("do nothing")
}

if isBoring == true && isBoring != false {
    print("fullfill both condition")
}
/// ---
/// `Loops` is a simple programming constructs that repeat a block of code for as long as a condition is true.
print("---Loops---")
for i in 1...10 {
    print(i, "* 10 =", i * 10)
}
for _ in 1...3 {
    print("hello")
}
for i in 1..<5 {
    print("index ", i)
}
let arr1 = ["a", "b", "c"]
for item in arr1 {
    print(item)
}
for i in 1...3 {
    for j in 1...3 {
        print(i, "x", j)
    }
}
var isWhileContinue = true
var count = 0
while isWhileContinue {
    if count >= 5 {
        isWhileContinue = false
    }
    count += 1
    print("isWhileContinue on count", count)
}
for i in 1...4 {
    if i == 2 {
        break
    }
    print("break not detected on", i)
}

for i in 1...4 {
    if i == 2 {
        continue
    }
    print("continue not detected on", i)
}
/// ---
/// `Switch case` is like `if else` but using case and have to cover all possibilities
print("---Switch case---")
enum ResultValidation {
    case success, noResult, failure
}
let resultValidation = ResultValidation.failure
switch resultValidation {
case .success:
    print("result success")
case .failure:
    print("result success")
case .noResult:
    print("result empty")
}

let resultNum = 3
switch resultNum {
case 0, 1, 2, 3:
    print("resultNum between 0 - 3")
default:
    print("resultNum not found")
}
/// ---
