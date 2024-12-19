import Cocoa

/// `Function` is a way to modularize logic into singgle responsibility code
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}
printHelp()
/// ---
/// `Parameter` are values that is sent into function
/// paramener is `number: Int`
func square(number: Int) {
    print("\(number * number)")
}
square(number: 2)

/// ---
/// `Return value` is the value that is produced after code processing in function
/// `-> Int` is the return
func squareWithResult(number: Int) -> Int {
    return number * number
}
print(squareWithResult(number: 2))
/// ---
/// `Parameter labels` is label on parameter
/// here label `to` is used on calling function parameter but `target`
func distance(to target: Int) {
    print("target is \(target)")
}
distance(to: 10)
/// `Remove Parameter labels` on label parameter
/// here label `_` means there is no label when calling function parameter
func eat(_ food: String) {
    print("eating \(food)")
}
eat("mie")
/// ---
///  `Default parameters` are parameter function with default value so it can be called without set the parameter value
func openCase(isLocked: Bool = true) {
    if isLocked {
        print("it's locked")
    } else {
        print("it's open")
    }
}
openCase()
openCase(isLocked: true)
openCase(isLocked: false)
///  ---
///  `Variadic functions` is parameter that accept any number that has same type
func appendNumbers(_ numbers: Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}
appendNumbers(1,2,3,4,5,6,7,8,9,100)
///  ---
///  `Throwing function` are function that capable to throw error
enum PasswordError: Error {
    case noEasyPassword
}
func checkPassword(_ password: String) throws -> Bool {
    guard password != "123456" else {
        throw PasswordError.noEasyPassword
    }
    return true
}
///  ---
///  `Running Throwing functions` is using `try, do, catch` to call throws function
do {
    let result = try checkPassword("12345")
    print("password is \(result)")
} catch {
    print("error password is \(error.localizedDescription)")
}
/// ---
/// `inout parameters` is pameter that can be chaged values in paramter insid function
var myNum = 10
func doubleIt(number: inout Int) {
    number *= 2
}
doubleIt(number: &myNum)
print(myNum)
///
