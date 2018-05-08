/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var weirdCollection: [Any] = [2.0, 3.3, 1, 2, "Dogo", "John", true, false]
print(weirdCollection)
/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var mixedDict: [String: Any] = ["String": "3e", "Double": 2.2, "Int" : 2, "Boolean": true]
print(mixedDict)

/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for (_, value) in mixedDict {
    if let pair = value as? Double {
        total += pair
    } else if value as? String != nil{
        total += 1
    } else if let pair = value as? Bool {
        if pair == true {
            total += 2
        } else {
            total -= 3
        }
    }
}
print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for (_, value) in mixedDict {
    if let pair = value as? Double {
        total2 += pair
    } else if let pair = value as? Int {
        total2 += Double(pair)
    } else if let pair = value as? String {
        if let number = Double(pair) {
            total2 += number
        }
    }
}
print(total2)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
