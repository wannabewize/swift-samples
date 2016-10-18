//
// 자식 클래스에 Designated Initializer 작성하기
//

// 부모 클래스
class Parent {
   var a : Int
   // 부모 클래스의 Designated Initializer
   init(a : Int) {
      self.a = 0
   }
}

// Designated Initializer를 작성한 자식 클래스
class Child : Parent {
   var b : Int
   
   // Designated Initializer
   init(a : Int, b : Int) {
      // 같은 클래스의 초기화 먼저
      self.b = b
      // 부모 클래스의 Designated Initializer 호출
      super.init(a: a)
   }
}


var obj = Child(a: 10, b: 20)

// 에러. 자식 클래스에 Designated Initializer를 작성했기 때문에 Initializer 상속이 안된다.
//var obj2 = Child(a : 10) // 에러