import Cocoa

/// `var` make property able to be change value
var greeting = "Hello, playground"
greeting = "Hallo"
/// ---

/// `Int` or Integer use to store number, for large number using `_` to separate number is ok and not change the value of `Int`
var age: Int = 25
var priceUnderScore = 10_000_000
var price = 10000000
print("prices are \(priceUnderScore) and \(price)")
/// ---

/// `multi line string` create multiple lines by using `""" """` but if inserted `\` in the middle like `""" \ """` it will not be multiple line
var str1 = """
This goes
over multiple
lines
"""
print("\(str1)")
var str2 = """
This goes \
over multiple \
lines
"""
print("\(str2)")
