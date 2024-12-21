import Cocoa

/// `Closures` are function that is asigned and traeted as properties
print("\n---Closures---\n")
let drinking = {
    print("Drink")
}
drinking()
/// ---
/// `Closures with Parametes` are closure with parameters
print("\n---Closures with Parametes---\n")
let eating = { (food: String) in
    print("eating", food)
}
eating("noodle")
/// ---
/// `Return in Closure` is a way to have return value in closure property
print("\n---Return in Closure---\n")
let drivingCar = { (destination: String) -> String in
    return "i'm driving car to \(destination)"
}
print(drivingCar("Home"))
/// ---
/// `Closure as Parameter` is using closure as parameter inside function
print("\n---Closure as Parameter---\n")
let walking = {
    print("i'm walking")
}
func travel(_ action: () -> Void) {
    print("start")
    action()
    print("finish")
}
travel(walking)
/// ---
/// `Trailing Closure` is syntax that let you pass function directly inside braces
print("\n---Trailing Closure---\n")
func reading(_ paper: () -> Void) {
    print("start reading")
    paper()
    print("finish reading")
}
reading {
    print("paper")
}
// the same because there is no other param on reading
reading() {
    print("paper")
}
/// ---
/// `Including parameter inside closure` closure inside function can accept oarameters that can be callled when closure is set
print("\n---Including parameter inside closure---\n")
func drinking(_ glass: (Int) -> Void) {
    print("i'm drinking")
    glass(5)
}
drinking { (glass: Int) in
    print("\(glass) glasses")
}
let bigJar = { (water: Int) in
    print("big jar contains \(water) liters")
}
drinking(bigJar)
/// ---
/// `Return value inside closure` closure can accepts parameter and return value
print("\n---Return value inside closure---\n")
func travel(action:(String) -> String) {
    print("start traveling")
    let vehicle = action("bike")
    print("finish by using \(vehicle)")
}
let bikeTravel = { (name: String) -> String in
    let result = "riding \(name)"
    print(result)
    return result
}
travel(action: bikeTravel)
/// ---
/// `Shorthand parameter name` is a way to remove parameter type and return  on calling callback such as using $0, $1, $2 as parameter
print("\n---Shorthand parameter name---\n")
func writing(_ object: String, action: (String) -> String) {
    print("start writing \(object)")
    let result = action(object)
    print(result)
    print("finished")
}
writing("letter") { (action: String) -> String in
    return "i'm writing \(action)"
}
writing("letter") { action -> String in
    return "i'm spelling \(action)"
}
writing("letter") { action in
    return "i'm checking \(action)"
}
writing("letter") {
    return "i'm correcting \($0)"
}
writing("letter") {
    "i'm finishing \($0)"
}
/// ---
/// `Closure with multiple shorthand parameter` using $0, $1, $2 as parameter
print("\n---Closure with multiple shorthand parameter---\n")
func getFoodAndDrink(get: (_ food: String, _ drink: String) -> String) {
    print("get food and drink")
    let food = get("rice", "cola")
    print(food)
}
getFoodAndDrink {
    "i got \($0) with \($1)"
}
/// ---
/// `Get Closure as return value` here is an example to use closure as a return value
print("\n---Get Closure as return value---\n")
func racing() -> (String) -> Void {
    return { (destination: String) in
        print("racing into \(destination)")
    }
}
let race = racing()
race("finish line")
let race2: Void = racing()("second finish line")
/// ---
/// `Capturing values inside closure`  here is an example to show property inside function tht return closure
print("\n---Capturing values inside closure---\n")
func countCallClosure() -> (String) -> Void {
    var count = 0
    return { (call: String) in
        count += 1
        print("call \(call) count is \(count)")
    }
}
let callCount = countCallClosure()
callCount("jawa")
callCount("bali")
callCount("sumatra")
countCallClosure()("kalimantan")
/// ---
