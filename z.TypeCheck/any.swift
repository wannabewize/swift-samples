//
// Any 타입. 정수형과 문자열 값 대입
//

var anyVar : Any = 3
print(anyVar, type(of:anyVar))


anyVar = "3"
print(anyVar, type(of:anyVar))

//anyVar = nil // Error.

struct MyStruct {
   var value = 1000
}

class MyClass {
   var value = 2000
}

// 구조체 객체 대입
anyVar = MyStruct()
print(anyVar, type(of:anyVar))


// 클래스 객체 대입
anyVar = MyClass()
print(anyVar, type(of:anyVar))


//
// AnyObject 타입
//

var anyObj : AnyObject

// Value 타입 대입은 불가.
//anyObj = 10 // Error
//anyObj = "Hello" // Error

// 구조체도 밸류 타입으로 대입 불가
//anyObj = MyStruct()

// ReferenceType 인 클래스 객체는 가능
anyObj = MyClass()
print(anyObj, type(of:anyObj))

