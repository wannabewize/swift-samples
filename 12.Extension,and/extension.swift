class Dog {
   func eat() {
      print("사료 먹기")
   }
   init() {}
}

extension Dog {
   func bike() {
      print("멍멍멍")
   }
}

protocol Running {
   func run()
}

extension Dog : Running {
   func run() {
      print("뛰기")
   }
}


extension Dog {
   convenience init(name : String) {
      // 원 클래스의 Designated Initializer로 Initializer 위임
      self.init()
   }
}