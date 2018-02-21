/*
 * 정수형 타입
 */

var intVal = 1 // 기본 Int 타입
var uintVal : UInt = 2

// Unsigned Int는 양수만 다룰 수 있다.
// error: negative integer '-2' overflows when stored into unsigned type 'UInt'
// uintVal = -2

// Int8은 8비트 크기. -128 ~ 127 까지 다룰 수 있다.
var int8Val : Int8 = 3
// error: integer literal '128' overflows when stored into 'Int8'
// int8Val = 128

// UInt8은 8비트 크기. 0~255까지 다룰 수 있다.
var uint8Val : UInt8 = 255
// error: integer literal '256' overflows when stored into 'UInt8'
// uint8Val = 256

var int16Val : Int16 = 32767
let uint16Val : UInt16 = 65535 // 0x1p16 - 1

var int32Val : Int32 = 2147483647 // 0x1p32 - 1
let uint32Val : UInt32 = 4294967295 // 0x1p32 - 1
let int64Val : UInt64 = 18446744073709551615

// 타입 크기 : .max, .min
print("Int8.max", Int8.max)
print("UInt8.min", UInt8.min)
print("Int.max : \(Int.max), Int.min : \(Int.min)")

// 2진수 다루기
var binaryVal = 0b1011 // 11
print("binary Value : ", binaryVal)
// 8진수 다루기
var octetVal = 0o77 // 63
print("octec Value : ",octetVal)
// 16진수 다루기
var hexVal = 0xFF // 255
print("hex Value : ",hexVal)

// 타입 호환 : Int8, Int16, Int32 혼합 연산은 에러 - 타입 변환해야 한다.
//let intResult = intVal + int16Val
let intResult2 = intVal + Int(int16Val)

// 서로 다른 타입의 값 대입 불가
// error: cannot assign value of type 'Int16' to type 'Int'
//intVal = int16Val
// error: cannot assign value of type 'Int8' to type 'Int32'
//int32Val = int8Val

// 정수형 타입 간 타입 변환
intVal = Int(int16Val)
int16Val = Int16(int8Val)


//
// 다른 타입에서 변환
//

// Bool 에서 Int 변환 불가
// error: cannot invoke initializer for type 'Int' with an argument list of type '(Bool)'
//let intFromBool = Int(true) 

// 실수형 값에서 Int 변환
let intFromDouble = Int(3.14)

// 문자열에서 Int 변환.
let intFromString = Int("1234")
// 16진수, 8진수, 2진수
let intFromHexStr = Int("1F4", radix: 16)
let intFromOctStr = Int("123", radix: 8)
let intFromBinStr = Int("1010", radix: 2)
print("Int From HexString(1F4) : ", intFromHexStr!)
print("Int From OctString(123) : ", intFromOctStr!)
print("Int From BinString(1010) : ", intFromBinStr!)

// 변환에 실패하면 nil
let intFromOctStrFail = Int("1F5", radix: 8)
print("Int From OctString Fail : ", intFromOctStrFail)

// 문자가 포함된 문자열 Int 변환 실패 - nil
let intFromStrFail = Int("1234a")
print("Int From String Fail : ", intFromStrFail)
