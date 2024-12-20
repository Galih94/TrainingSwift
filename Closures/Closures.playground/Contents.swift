import Cocoa

/// `Closures` are function that is asigned and traeted as properties
let drinking = {
    print("Drink")
}
drinking()
/// ---
/// `Closures with Parametes` are closure with parameters
let eating = { (food: String) in
    print("eating", food)
}
eating("noodle")
/// ---
/// `Return in Closure` is a way to have return value in closure property
let drivingCar = { (destination: String) -> String in
    return "i'm driving car to \(destination)"
}
print(drivingCar("Home"))
/// ---
/// `Closure as Parameter` is using closure as parameter inside function
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
