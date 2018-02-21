/*
 * 문자열 변경/조작하기
 */

// + 연산자로 문자열 덧붙이기
var str = "Hello"
str = str + " Swift"
str += "!"
print(str)

// append 함수를 이용해서 문자열 덧붙이기
var str2 = "Hello"
str2.append(" Swift")
print(str2)


// append 함수를 이용해서 Character 덧붙이기
let exclaim  : Character = "!"
str2.append(exclaim)
print(str2)

// 대소문자 변경
let uppercaseStr = str.uppercased()
let lowercaseStr = str.lowercased()
print(uppercaseStr, lowercaseStr)


// 특정 위치에 문자 삽입 - String.Index 필요
var helloStr = "Hello Wld"
// 인덱스 구하기. endIndex에서 앞으로 이동
let index8 = helloStr.index(helloStr.endIndex, offsetBy: -2)
helloStr.insert(contentsOf: ["o", "r"], at: index8)
//helloStr.insert(contentsOf:"or".characters, at: index8) // Hello World
print("Insert Characters :", helloStr)

// remove함수를 이용해서 특정 위치의 문자 삭제
var helloStr2 = "Hello, World!"
// "Hello, World"
helloStr2.remove(at: helloStr2.index(before: helloStr2.endIndex) )
print("Remove Last Character :",helloStr2)


// removeSubrange함수를 이용해서 특정 범위내 문자열 삭제
let range = helloStr2.index(helloStr2.startIndex, offsetBy:5)...
// "Hello"
helloStr2.removeSubrange(range)
print("Remove range : ",helloStr2)

//
// 문자열을 분리하기
//
let commaStr = "123,456,789"
let splited = commaStr.split(separator: ",")
print("Splited by comma :", splited)

//
// trimming. Foundation 필요
//
import Foundation

// 공백 문자 트리밍
let spaceStr = " Hello Swift "
let trimmed = spaceStr.trimmingCharacters(in: CharacterSet.whitespaces)
print("Trimming WhiteSpace : ", trimmed)

// 특정 문자 트리밍
let dashStr = "--Hello Swift!-"
// 트리밍할 문자셋
let chSet = CharacterSet(charactersIn: "-")
let trimmed2 = dashStr.trimmingCharacters(in: chSet)
print("Trimming specipic Character : ",trimmed2)



