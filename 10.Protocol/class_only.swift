protocol MyProtocol : class {
}

// 구조체는 class only 프로토콜 채택 불가
// struct MyStruct : MyProtocol {}

class MyClass {
   // ARC와 사용할 때
   weak var property : MyProtocol!
}

var obj = MyClass()
