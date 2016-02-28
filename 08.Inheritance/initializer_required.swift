class Parent {
   var a : Int
   var b : Int
   
   // Required Designated Initializer
   required init(a : Int, b : Int) {
      self.a = a
      self.b = b
   }
   
   // Designated Initializer
   init(a : Int) {
      self.a = a
      self.b = 0
   }
   
   // Required Convenience Initializer
   required convenience init() {
      self.init(a : 0)
   }
}



class Child : Parent {
   var c : Int
   
   // required Designated Initializer 재정의
   required init(a : Int, b : Int) {
      self.c = 0
      super.init(a: a, b : b)
   }
   
   // required Convenience Initializer 재정의
   required convenience init() {
      self.init(a : 0, b : 0)
   }
}




// 자식 클래스에서 required 조건으로 재정의한 Designated Initializer로 객체 생성
var obj1 = Child(a: 10, b : 20)

// 자식 클래스의 Convenience Initializer로 생성
var obj2 = Child()


class AnotherChild : Parent {
   // Designated Initializer가 없으므로 초기화 메소드 상속
}

// 부모 클래스에서 상속받은 Initializer로 객체 생성
var obj3 = AnotherChild(a: 10)
var obj4 = AnotherChild(a: 20, b: 30)