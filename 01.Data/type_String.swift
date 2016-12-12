// 기본 타입은 문자열(String)
let str1 = "Hello, Swift Language"
let str2 : String = "Swift"

// interpolation
let str3 = "1 + 2 = \(1+2)"
let str4 = "Hello, \(str2)"
print("interpolation1 : ", str3)
print("interpolation2 : ", str4)


// Int 타입과 문자열 변환
let intVal = 1234
let strFromInt = String(intVal)
print("String from Int : \(strFromInt)")

let intStr = "1234"
let intValFromStr = Int(intStr)!
print("Int from String : \(intValFromStr)")
// 변환 실패
let intValFromStr2 = Int("123a")
print("Int from String-Fail : ", intValFromStr2) // nil

// Float 타입과 문자열
let floatVal : Float = 314159.000
let strFromFloat = String(floatVal)
print("String from Float : \(strFromFloat)")

let floatStr = "3.14"
let floatValFromStr = Float(floatStr)
print("Float Value from String : \(floatValFromStr)")

// Bool 타입과 문자열 변환
let boolVal = true
let strFromBool = String(boolVal)
print("String from Bool : \(strFromBool)") // "true"

let boolVal2 = Bool("true")!
if boolVal2 {
   print("boolVal2 is true")
}
else {
   print("boolVal2 is not true")
}

// 문자와 문자열
let charVal : Character = "♥"
let strFromChar = String(charVal)
print("String from Character : ", strFromChar)
print("charVal type : ", type(of : charVal))
print("strFromVal type :", type(of : strFromChar))


//
// 파운데이션(Foundation) Framework 로딩
import Foundation

// 포맷 문자열 생성 - 파운데이션 프레임워크 제공
let formatted1 = String(format:"%03d", 12)
print("Formatted String(03d) : ", formatted1)

let formatted2 = String(format: "%3.2f", 3.14159)
let formatted3 = String(format: "%3.2e", 3.14159)
print("Formatted String(3.2f) : ", formatted2)
print("Formatted String(3.2e) : ", formatted3)


let formatted4 = String(format: "%@, %@", "Hello", "Swift")
print("formatted String : ", formatted4)