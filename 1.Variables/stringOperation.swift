var str = "Hello"
str = str + " Swift"
print(str)


var str2 = "Hello"
// String 덧붙이기
str2.appendContentsOf(" Swift")

// Character 덧붙이기
let exclaim  : Character = "!"
str2.append(exclaim)

print(str2)

var intVal = 1234
// let strFromInt : String = toString(intVal) // Unabilable
// print(strFromInt)

let uppercaseStr = str.uppercaseString
let lowercaseStr = str.lowercaseString
print(uppercaseStr, lowercaseStr)

