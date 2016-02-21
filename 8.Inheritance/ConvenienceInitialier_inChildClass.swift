// 부모 클래스
class Parent {
   var a : Int
   // 부모 클래스의 Designated Initializer
   init(a : Int) {
      self.a = 0
   }
}

class Child : Parent {
   var b : Int
   
   // 자식 클래스의 Designated Initializer
   init(a : Int, b : Int) {
      // 같은 클래스의 초기화 먼저
      self.b = b
      // 부모 클래스의 Designated Initializer 호출
      super.init(a: a)
   }
   
   // Convenience Initializer
   convenience init(b : Int) {
      self.init(a: 10, b : b) // 같은 클래스의 Designated Initializer로 위임
      // 나머지 초기화 동작
   }
}


// 자식 클래스의 Designated Initializer로 객체 생성
var obj = Child(a: 10, b: 20)

// 자식 클래스의 Convenience Initialier로 객체 생성
var obj2 = Child(b: 30)

//var obj3 = Child(a: 40) // 에러. 상속되지 않은 Initializer
