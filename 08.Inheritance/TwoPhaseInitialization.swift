class Parent {
   var a : Int
   
   // 부모 클래스의 초기화 메소드
   init() {
      // 1단계(Phase 1) : 프로퍼티 초기화
      a = 0
      // 2단계(Phase 2) 초기화
   }
}

class Child : Parent {
   var b : Int
   
   init(a : Int, b : Int) {
      // 1단계(Phase 1) : 자식 클래스의 초기화에서 부모 클래스까지 초기화
      self.b = b
      super.init()
      
      // 2단계(Phase 2) : 부모 클래스의 값 재설정.
      self.a = a
   }
}
