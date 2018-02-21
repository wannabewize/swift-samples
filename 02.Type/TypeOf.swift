/*
 * 타입 정보 얻기 ( type(of : arg) )
 */

let str = "Hello World"
print("String Type : \(type(of:str))")

let value1 = 1234
print("Int Type : \(type(of:value1))")

let value2 = 3.14159
print("Double Type : \(type(of:value2))")

let intVal = 1 // 기본 Int 타입
let int8Val : Int8 = 2
let uintVal : UInt = 3

// type(of:)를 이용한 타입 체크
print("type(of: Int) == type(of: Int) :", type(of: intVal) == type(of: value1) )
print("type(of: Int) == type(of: UInt) :", type(of: intVal) == type(of: uintVal) )

// 타입 크기
let intTypeInfo = type(of: intVal)
print("Int BitWidth : ", intTypeInfo.bitWidth)

let int8TypeInfo = type(of: int8Val)
print("Int8 BitWidth : ", int8Val.bitWidth)

// Type.self를 이용해서 타입 체크
print("type(of: Int) == Int.Type :", type(of: intVal) == Int.self)
print("type(of: Int) == String.Type :", type(of: intVal) == String.self)

// is를 이용한 타입 체크
print("Int value is Int :", intVal is Int)
print("Int value is String :", intVal is String)

