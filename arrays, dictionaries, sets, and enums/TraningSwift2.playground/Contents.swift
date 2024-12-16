import UIKit

/// `Array` is a colection of values that is ordered
let name1 = "Jhon"
let name2 = "Paul"
let name3 = "Ringgo"
let name4 = "George"
let band1 = [name1, name2, name3, name4] // array without type annotation
let band2: [String] = [name1, name2, name3, name4] // array with type annotation
print("band 1 = \(band1), first person is \(band1[0])")
print("band 2 = \(band2)")
/// ---
/// `Sets` is a collection of values that is unordered and each one value is unique
let set1 = Set(["red","green","blue"])
print("set1 = \(set1)")
let set2 = Set(["red","red","green","blue"]) // there is 2 "red", only 1 "red" will be shown
print("set2 = \(set2)")
var set3: Set<String> = ["red","red","green","blue"] // set with type annotations
print("set3-1 = \(set3)")
let (inserted, memberAfterInsert) = set3.insert("yellow")
if !inserted {
    print("insert \(memberAfterInsert) success")
}
print("set3-2 = \(set3)")
/// ---
/// `Tuples` is collection of several value that cannot be added or removed(fixed), each item cannot change the type, can be accesed by key or numerical position
var tuple1 = (first: "Galih", last: "Samodra")
print("tuple numerical access \(tuple1.0), \(tuple1.1)")
print("tuple key access \(tuple1.first), \(tuple1.last)")
/// ---
/// `Dictionaries` is collection of values that have keys that is needed to access each stored values
let dict1 = ["key1": 1, "key2": 10]
print("dictionary \(dict1), key1 is \(dict1["key1", default: 0])") // print value dictionary key with default value
/// ---
/// `Enumerations` is a way to define a group related values
enum Bender {
    case air
    case fire
    case water
    case earth
    case nonBender
}
let konoha = Bender.fire
let kiri: Bender = Bender.water
/// ---
/// `Enumerations associated values` can store associated values as case
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "sports")
/// ---
/// `Enumerations raw values` make enum conform to type properties / protocol
enum Level: Int {
    case master
    case high
    case regular
    case low
}
let game1 = Level(rawValue: 0)
print("game 1 is \(game1)")
enum Tasty: Int {
    case delicious = 4
    case mid
    case notGood
}
print("foods are \(Tasty(rawValue: 6)), \(Tasty(rawValue: 5))")
/// using `CaseIterable` make property `allCases` available
enum OnBoardingPage: CaseIterable {
    case welcome
    case featureExplanation
    case login
}
print("OnBoardingPage \(OnBoardingPage.allCases)")
