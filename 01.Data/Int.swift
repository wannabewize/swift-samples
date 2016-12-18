// 정수형 타입
let intVal = 1 // 기본 Int 타입
let uintVal : UInt = 2

let int8Val : Int8 = 3
let uint8Val : UInt8 = 4

let int16Val : Int16 = 5
let int32Val : Int32 = 6
let int64Val : Int64 = 7

// 타입 정보 얻기 : type(of : Val )
print("Int Val : ", type(of:intVal) )
print("Int8 Val : ", type(of:int8Val) )
print("Int32 Val : ", type(of:int32Val) )

let intVal2 = 2
print("Int == Int Type equality : ", type(of : intVal) == type(of : intVal2) )
print("Int == Int8 Type equality : ", type(of : intVal) == type(of : int8Val) )

// Overflow Error : Int8의 크기는 -128~127
// error: integer literal '128' overflows when stored into 'Int8'
// int8Val = 128 

// 타입 변환
// let intFromBool = Int(true) // Bool  에서 Int 변환 불가
let intFromInt8 = Int(int8Val)

let intFromDouble = Int(3.14)

let intFromString = Int("1234")
let intFromString2 = Int("1F4", radix : 16) // 16진수. 불가시 nil
print("intFromString2 : ", intFromString2)


// 서로 다른 타입의 값 대입 불가
// error: cannot assign value of type 'Int16' to type 'Int'
// intVal = int16Val

// 더 큰 타입으로 대입하는 것도 불가
// error: cannot assign value of type 'Int8' to type 'Int32'
// int32Val = int8Val

// 타입 크기 : MemoryLayout<T>.size
// https://github.com/apple/swift-evolution/blob/master/proposals/0101-standardizing-sizeof-naming.md

print("Int size   : ", MemoryLayout<Int>.size, " min : ", Int.min, " max : ", Int.max)
print("Int8 size  : ", MemoryLayout<Int8>.size, " min : ", Int8.min, " max : ", Int8.max)
print("UInt8 size : ", MemoryLayout<UInt8>.size, " min : ", UInt8.min, " max : ", UInt8.max)
print("int16 size : ", MemoryLayout<Int16>.size);
print("int32 size : ", MemoryLayout<Int32>.size);
print("int64 size : ", MemoryLayout<Int64>.size);

// 2진수 다루기
var binaryVal = 0b1011 // 11
print("binary Value : ", binaryVal)
// 8진수 다루기
var octetVal = 0o77 // 63
print("octec Value : ",octetVal)
// 16진수 다루기
var hexVal = 0xFF // 255
print("hex Value : ",hexVal)