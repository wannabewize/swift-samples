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

// 대소문자 변경
let uppercaseStr = str.uppercaseString
let lowercaseStr = str.lowercaseString
print(uppercaseStr, lowercaseStr)
