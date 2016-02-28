class Parent {
   var value : Int
   
   // Failable Initializer
   init?(value : Int) {
      if value <= 0 {
         self.value = 0
         return nil
      }
      self.value = value
   }
}


class Child : Parent {
   // Failable Initializer 재정의
   override init?(value: Int) {
      // super.init 호출 필요
      super.init(value: 0)
            // 유효성 검사

      if value < 0 {
         return nil
      }
      self.value = value
   }
}

var obj = Child(value: 0)
obj
