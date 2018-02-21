/**
 * 자식 클래스에 Convenience Initializer 작성하기
 */

// 부모 클래스
class Parent {
   var a : Int
   // 부모 클래스의 Designated Initializer
   init(a : Int) {
      self.a = 0
   }
}


//
// 부모 클래스에서 Initializer를 상속하지 않은 경우
// 자식 클래스에서 Convenience Initialier 작성하기
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
let obj = Child(a: 10, b: 20)

// 자식 클래스의 Convenience Initialier로 객체 생성
let obj2 = Child(b: 30)

//let obj3 = Child(a: 40) // 에러. 상속되지 않은 Initializer


//
// 부모 클래스에서 Initializer를 상속하는 경우
// 자식 클래스에서 Convenience Initialier 작성하기
class Child2 : Parent {
   // Designated Initializer가 없으므로 Initialier 상속 조건 충족
   convenience init() {
      // 상속받은 Designated Initializer 호출
      self.init(a: 10)
   }
}

// 자식 클래스에 작성한 Convenience Initialier로 객체 생성
let obj4 = Child2()

