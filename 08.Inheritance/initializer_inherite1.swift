/*
 * 부모 클래스의 Initialiezer 상속하기. Case 1
 * 자식 클래스에 Designated Initialiezer가 없으면 상속
 */

// 부모 클래스
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
   // 초기값이 있기 때문에 Initializer 생략 가능
   var b = 100
}


// 부모 클래스에서 상속받은 Designated Initializer로 자식 클래스 객체 생성
var childObj1 = Child(a: 10)

// 부모 클래스에서 상속받은 Convenience Initializer로 자식 클래스 객체 생성
var childObj2 = Child()
