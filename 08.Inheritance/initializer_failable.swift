/*
 * Failable Initializer의 재정의
 */
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
   
   // Designated Initializer
   init() {
      self.value = 0
   }
}

//
// Failable Initializer를 Failable Inintializer로 재정의
//

class Child : Parent {
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

let obj = Child(value: 0) // Optional
print(obj)

//
// Failable initializer를 non-failable initializer로 재정의
//

class Child2 : Parent {
   override init(value : Int) {
      super.init()
   }
}

let obj2 = Child2(value: 0)
print(obj2)


//
// Non-Failable Initializer를 Failable initializer로 재정의 - 에러
//

class Child3 : Parent {
   //   override init?() {
   //      super.init(value: 10)
   //   }
}


