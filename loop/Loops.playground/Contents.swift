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
