/*
* 실수형 값을 다루는 타입은 Float, Double이 있다.
* Float타입의 크기는 4byte, Double 타입의 크기는 8byte
*/

// 실수형 타입
let doubleVal = 3.14 // 기본 Double 타입

// Float 타입으로 선언
let floatVal : Float = 36.5

let floatVal2 = 3e10 // 지수형 표기. 3^10 = 30000000000

// Double, Float 사이의 연산은 에러
// error: binary operator '+' cannot be applied to operands of type 'Float' and 'Double'
// var ret = floatVal + doubleVal

// 실수형 타입 간 변환
let floatFromDouble : Float = Float(doubleVal)
print("float from double : ", floatFromDouble)

// 문자열에서 변환
let doubleFromString = Double("1234")!
print("double from string : ", doubleFromString)

