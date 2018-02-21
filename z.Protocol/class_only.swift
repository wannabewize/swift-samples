/*
 * 클래스 전용 프로토콜
 */

protocol MyProtocol : class {
}

// 구조체는 class only 프로토콜 채택 불가
//struct MyStruct : MyProtocol {}

// 클래스에서는 프로토콜 채택 가능
class MyClass : MyProtocol {
   
}
var obj = MyClass()

// 프로토콜을 타입으로 사용하면서 ARC 적용
class OtherClass {
   // ARC와 사용할 때
   weak var property : MyProtocol!
}
