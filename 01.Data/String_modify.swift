let str = "Hello Swift"

let start = str.startIndex // 마지막 -1
let last = str.index(before: str.endIndex)

let index3 = str.index(str.startIndex, offsetBy: 3)

let index7 = str.index(str.endIndex, offsetBy: -4, limitedBy: str.startIndex)!


// 부분 문자/문자열
let char = str[index3] // "l", Character Type
print(char, type(of:char))

let subStr1 = str[index3...last] // "lo Swift"
print("subStr1 : ", subStr1)

let subStr2 = str[str.startIndex..<index3] // "Hel"
print("subStr2 : ", subStr2)

import Foundation

// substring 메소드는 파운데이션 프레임워크
let subStr3 = str.substring(from: index7) // "wift"
print("subStr3 : ", subStr3)

let subStr4 = str.substring(to: index3) // "Hel"
print("subStr4 : ", subStr4)

let substrRange = index3..<index7
let subStr5 = str.substring(with: substrRange) // "lo S"
print("subStr5 : ", subStr5)


// 문자 삽입
var str2 = "Hello Wod" // 문자열 변경 발생 - var로 선언
let index8 = str2.index(str2.endIndex, offsetBy: -1)
str2.insert(contentsOf: ["r", "l"], at: index8) // Hello World
//str2.insert(contentsOf:"rl".characters, at: index8) // Hello World
print(str2)

let ch : Character = ","
let index5 = str2.index(str.startIndex, offsetBy: 5)
str2.insert(ch, at: index5) // Hello, World
print(str2)


// 문자 삭제
var str3 = "Hello, World!"
// "Hello, World"
str3.remove(at: str3.index(before: str3.endIndex) )
print(str3)


// 범위를 이용한 문자열 일부 삭제
let range = str3.index(str3.startIndex, offsetBy:5)..<str3.endIndex
// "Hello"
str3.removeSubrange(range)
print(str3)


//
// trimming
//

// String 공백 문자 제거
print("== Trimming ==")
let spaceStr = " Hello Swift "
let trimmed = spaceStr.trimmingCharacters(in: CharacterSet.whitespaces)

let dashStr = "--Hello Swift!-"
let chSet = CharacterSet(charactersIn: "-")
let trimmed2 = dashStr.trimmingCharacters(in: chSet)
print(trimmed2)
