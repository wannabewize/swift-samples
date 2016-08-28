/*
 * 문자열 다루기 - Swift2
 */

// + 연산자로 문자열 덧붙이기
var str = "Hello"
str = str + " Swift"
str += "!"
print(str)

// String 덧붙이기
var str2 = "Hello"
str2.appendContentsOf(" Swift")

// Character 덧붙이기
let exclaim  : Character = "!"
str2.append(exclaim)
print(str2)

// 대소문자 변경
let uppercaseStr = str.uppercaseString
let lowercaseStr = str.lowercaseString
print(uppercaseStr, lowercaseStr)
