import UIKit

/// `Arithmatic operator` are mathematical operator to do computation
let number1 = 10
let number2 = 2
let total = number1 + number2 // addition
let difference = number1 - number2 // substract
let multiplied = number1 * number2 // multiply
let divided = number1 / number2 // division
let modulus = 13 % 4 // get left over of division
let valueDbl: Double = 90000000000000001 // Double cannot process large number but can process decimal number
let valueInt: Int = 90000000000000001 // Integer can process large number but cannot process decimal number
/// ---

/// `Operator Overloading` operrator such as `+` can be overload to accomodate more than 1 type of property
let numberPlus = 12 + 12
let textPlus = "Hello" + " " + "World"
let arrayPlus = ["Galih", "Samodra"] + ["Wicaksono"]
print(arrayPlus)
/// ---
/// `Compound assignment operator` are more that 1 operator than can be used together
var score = 90
score -= 10 /// `-=`is operator that substract and set score to result oh 90 - 10
score += 5 /// `+=`is operator that substract and set score to result oh 80 + 5
/// ---
/// `Comparison Operators` are operatore to compare 2 properties
let same = 1 == 1
let notSame = 2 != 1
let bigger = 1 < 2
let smallerEqual = 5 >= 3
let text = "Galih" <= "Samodra"
let date = Date() < Date().addingTimeInterval(10)
/// ---
/// `Conditions` using `if` statement can make a code run or not run
let card1 = 11
let card2 = 10
if card1 + card2 == 21 {
    print("Blackjack!")
} else if card2 + card1 == 21 {
    print("Blackjack")
} else {
    print("Regular cards")
}
/// ---
/// `Combining Conditions` using `if`that contains 2 or mode statement
let age1 = 28
let age2 = 20
if age1 > 18 && age2 > 18 {
    print("both over 18")
}
if age1 > 25 || age2 > 25 {
    print("at least 1 is over 25")
}
/// `Ternary Operator` is a condition statement that consist of statement, result statement true and result statement false
let card3 = 5
let card4 = 7
card3 == card4 ? print("true here") : print("false here")
/// ---
/// `Switch Statements`  is a condition statement that will state all posibilities for all possible  conditions
let weather = "rainy"
switch weather {
case "sunny":
    print("its warm")
case "rainy":
    print("its cold")
default:
    print("enjoy your day")
}
let name1 = "Galih"
switch name1 {
case "Hello":
    print("Hi")
case "Galih":
    print("Hi Galih")
    fallthrough // fallthrough will let case below run
case "Samodra":
    print("Hi Samodra")
case "Wicaksono":
    print("Hi Wicaksono")
default:
    print("Hello ")
}
/// ---
///  `Range Operators` there are 2 range `..<` and `...` operators, the `..<` half open range exclude final value, `...` the close range include final value
let score1 = 90
switch score1 {
case 0..<50:
    print("Bad Score")
case 50...85:
    print("Good Score")
default:
    print("Great Score")
}
let names = ["Galih", "Samodra", "Wicaksono", "S.kom"]
print(names[0])
print(names[1...2])
print(names[0..<2])
print(names[1...])
