// 정수형 타입
var intType = 1 // 기본 Int 타입
var uintType : UInt = 2

var int8Type : Int8 = 3
var uint8Type : UInt8 = 4

var int16Type : Int16 = 5
var int32Type : Int32 = 6
var int64Type : Int64 = 7

// 2진수 다루기
var binaryVar = 0b1011 // 11
print("binary Value : ", binaryVar)
// 8진수 다루기
var octetVar = 0o77 // 63
print("octec Value : ",octetVar)
// 16진수 다루기
var hexVar = 0xFF // 255
print("hex Value : ",hexVar)

// 실수형 타입
var floatType : Float = 3.14 // 기본 Double 타입
var doubleType = 3.14159
var floatType2 = 3e10 // 지수형 표기. 300.0

// 타입 크기 
print("Int size   : ", sizeof(Int), " min : ", Int.min, " max : ", Int.max)
print("Int8 size  : ", sizeof(Int8), " min : ", Int8.min, " max : ", Int8.max)
print("UInt8 size : ", sizeof(UInt8), " min : ", UInt8.min, " max : ", UInt8.max)
print("int16 size : ", sizeof(Int16));
print("int32 size : ", sizeof(Int32));
print("int64 size : ", sizeof(Int64));

// 타입 변환
intType = Int(int8Type)
floatType = Float(doubleType)


//
// ERROR
//

// Overflow Error : Int8의 크기는 -128~127
// int8Type = 128 

// 서로 다른 타입
// intType = int16Type
// int32Type = int8Type // 더 큰 타입으로 대입하는 것도 불가

// 서로 다른 타입 간 연산도 에러
// var ret = floatType + doubleType
