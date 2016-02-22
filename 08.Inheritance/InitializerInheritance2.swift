class Parent {
   var a : Int
   
   // Designated Initializer
   init(a : Int) {
      self.a = a
   }
   
   // Convenience Initializer
   convenience init() {
      self.init(a : 0)
   }
}

class Child : Parent {
   var b : Int
   
   // 초기화 메소드 재정의, Designated Initializer
   override init(a : Int) {
      self.b = 0
      super.init(a: a)
   }
   
   // Designated Initializer
   init(a : Int, b : Int) {
      self.b = b
      super.init(a: a)
   }
}


// 자식 클래스의 Designated Initializer로 객체 생성
var obj1 = Child(a: 10, b : 20)

// 재정의한 Designated Initializer로 객체 생성
var obj2 = Child(a: 30)

// 상속받은 Convenience Initializer로 객체 생성
var obj3 = Child()