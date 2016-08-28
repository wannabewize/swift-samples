// Int 타입과 문자열 변환
let intVal = 1234
let strFromInt = String(intVal)
print("String from Int : \(strFromInt)")

let intStr = "1234"
let intValFromStr = Int(intStr)!
print("Int from String : \(intValFromStr)")
// 변환 실패
let intValFromStr2 = Int("123a")
print("Int from String-Fail : ", intValFromStr2) 

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
print("String from Bool : \(strFromBool)")

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
print("String from Character : ", strFromChar, " isString : ", strFromChar is String)

let charVal2 = Character(strFromChar)
print("Character from String : ", charVal2, " isCharacter : ", charVal2 is Character)

// 변환 실패 : 에러 발생
//let charVal3 = Character("Hi")
//print("Character from string(Fail) : ", charVal3)

