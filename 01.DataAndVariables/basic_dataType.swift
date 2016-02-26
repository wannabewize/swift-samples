// Bool
var boolVal = true
// Type Error
// var boolVar2 : Bool = 1

// 정수형 타입
var intVal = 1 // 기본 Int 타입
var uintVal : UInt = 2

var int8Val : Int8 = 3
var uint8Val : UInt8 = 4

var int16Val : Int16 = 5
var int32Val : Int32 = 6
var int64Val : Int64 = 7

// Overflow Error : Int8의 크기는 -128~127
// int8Val = 128 

// 타입 변환
intVal = Int(int8Val)


// 서로 다른 타입의 값 대입 불가
// intType = int16Type
// int32Type = int8Type // 더 큰 타입으로 대입하는 것도 불가

// 타입 크기 
print("Int size   : ", sizeof(Int), " min : ", Int.min, " max : ", Int.max)
print("Int8 size  : ", sizeof(Int8), " min : ", Int8.min, " max : ", Int8.max)
print("UInt8 size : ", sizeof(UInt8), " min : ", UInt8.min, " max : ", UInt8.max)
print("int16 size : ", sizeof(Int16));
print("int32 size : ", sizeof(Int32));
print("int64 size : ", sizeof(Int64));

// 2진수 다루기
var binaryVal = 0b1011 // 11
print("binary Value : ", binaryVal)
// 8진수 다루기
var octetVal = 0o77 // 63
print("octec Value : ",octetVal)
// 16진수 다루기
var hexVal = 0xFF // 255
print("hex Value : ",hexVal)

// 실수형 타입
var doubleVal = 3.14 // 기본 Double 타입
var floatVal : Float = 36.5

var floatVal2 = 3e10 // 지수형 표기. 300.0

// 타입 변환
floatVal = Float(doubleVal)

print("double + Double(float) : ",doubleVal + Double(floatVal));
// 에러 : 서로 다른 타입 간 연산
// var ret = floatVal + doubleVal
