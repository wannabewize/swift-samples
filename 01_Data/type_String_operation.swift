// + 연산자로 문자열 덧붙이기
var str = "Hello"
str = str + " Swift"
str += "!"
print(str)

// String 덧붙이기
var str2 = "Hello"
str2.append(" Swift")
print(str2)


// Character 덧붙이기
let exclaim  : Character = "!"
str2.append(exclaim)
print(str2)

// 대소문자 변경
let uppercaseStr = str.uppercased()
let lowercaseStr = str.lowercased()
print(uppercaseStr, lowercaseStr)
