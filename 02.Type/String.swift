/*
* 문자열 타입
*/
// 기본 타입은 문자열(String)
let str1 = "Hello, Swift Language"
let str2 : String = "Swift"

// interpolation
let str3 = "1 + 2 = \(1+2)"
let str4 = "Hello, \(str2)"
print("interpolation1 : ", str3)
print("interpolation2 : ", str4)

// 문자열 길이
let count1 = str1.count
let count2 = str2.count
print("String Count ", count1, count2)

// Bool 값에서 문자열 변환
let strFromBool = String(true)
print("String from Bool : \(strFromBool)") // "true"

// 문자와 문자열
let charVal : Character = "♥"
let strFromChar = String(charVal)

// 정수형 값에서 문자열 변환
let strFromInt = String(1234)
print("String from Int : \(strFromInt)")

// 실수형 값에서 문자열 변환
let strFromFloat = String(3.14)
print("String from Float : \(strFromFloat)")

// String and Character
for ch in "String" {
    print("ch : \(ch)")
}