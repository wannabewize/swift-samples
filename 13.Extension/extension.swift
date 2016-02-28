class Dog {
   func eat() {
      print("사료 먹기")
   }
   init() {}
}

// extension에서 메소드 작성
extension Dog {
   func bike() {
      print("멍멍멍")
   }
}

var doggy = Dog()
// extension에 있는 메소드 호출
doggy.bike()

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

// Extension에서 initializer 작성
extension Dog {
   convenience init(name : String) {
      // 원 클래스의 Designated Initializer로 Initializer 위임
      self.init()
   }
}

var obj = Dog(name : "멍멍이")