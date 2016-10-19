/*
 * 확장
 */

class Dog {
   func eat() {
      print("먹기")
   }
   
   init() {}
}

// extension에서 메소드 작성
extension Dog {
   func bike() {
      print("멍멍멍")
   }
   
   // extension은 재정의가 안된다.
   // func eat() { print("냠냠냠") } // Error.
   
   static func hasTail() -> Bool {
      return true
   }
}

var doggy = Dog()
doggy.eat()
// extension에 있는 메소드 호출
doggy.bike()

// 타입 메소드
print("개는 꼬리가 있다? : ", Dog.hasTail())


//
// 프로토콜 추가
//

extension Dog {
   // 저장 프로퍼티는 불가
   // var color : String!
   
   // 계산 프로퍼티는 가능
   var everageLife : Int! { return 15 }
   
}

//
// Initializer 추가
//
extension Dog {
   convenience init(name : String) {
      // 원 클래스의 Designated Initializer로 Initializer 위임
      self.init()
   }
   
   // Designated Initializer는 불가능
//   init(anyVal : Int) {}
}

let obj = Dog(name : "멍멍이")

//
// 프로토콜 채택
//

protocol Running {
   func run()
}

// Extension에서 프로토콜 채택
extension Dog : Running {
   func run() {
      print("뛰기")
   }
}

doggy.run()