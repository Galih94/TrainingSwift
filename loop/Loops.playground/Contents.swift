import UIKit

/// `Loop for` use for as looping data until certain condition met
let count = 1...2
for number in count {
    print("number: \(number)")
}
for _ in count {
    print("number is printed")
}
let arr1 = [1,2,3]
for number in arr1 {
    print("number: \(number)")
}
/// ---
/// `Loop while` use while as looping until certain condition fails
var number1 = 1
while number1 <= 5 {
    print(number1)
    number1 += 1
}
print("Ready or not here i come")
/// ---
/// `Loop repeat while` is like while but the checking statement run after looping code run
var number2 = 1
repeat {
    print("number \(number2)")
    number2 += 2
} while number2 <= 4
/// ---
/// `Exiting Loops` is way to break out from looping process using keyword `break`
var number3 = 1
while number3 < 5 {
    if number3 == 3 {
        break
    }
    print("number is: \(number3)")
    number3 += 1
}
/// ---
/// `Nested loops` is loop inside loop
for i in 1...3 {
    for j in 1...4 {
        print("\(i), \(j)")
        if j == 3 {
            break
        }
    }
}
/// use label `outerLoop` to exit all loops
outerLoop: for i in 5...7 {
    for j in 5...8 {
        print("\(i), \(j)")
        if j == 8 {
            break outerLoop
        }
    }
}
/// ---
/// `Skip loop` using key `continue`
for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    print("odd number \(i)")
}
/// ---
/// `Infinite loop` is when there is no exit statement inside loop
/*
while true {
    print("infinite loop")
}
*/
/// ---
