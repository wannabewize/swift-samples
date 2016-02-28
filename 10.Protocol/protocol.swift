//
// 메소드
//

protocol Singing {
   func sing()
}

class Bird : Singing {
   func sing() {
      print("짹짹짹~")
   }
}

struct Cat : Singing {
   func sing() {
      print("갸르릉 갸르릉")
   }
}


protocol Dancing {
   func dance()
}

// 여러개의 프로토콜 채택
class Human : Dancing, Singing {
   func sing() {
      print("랄라라~")
   }
   
   func dance() {
      print("춤추기")
   }
}

//
// 타입 메소드
//

protocol Species {
   // 타입 메소드 선언
   static func species() -> String
}

class Cow : Species {
   // 타입 메소드 구현
   static func species() -> String {
      return "소"
   }
}


// 프로퍼티의 get/set 설정
protocol HoldingBreath {
   var duration : Int { get set }
}

// 저장 프로퍼티로
class Diver : HoldingBreath {
   var duration : Int = 0
   
}

// 계산 프로퍼티
class MyClass : HoldingBreath {
   var duration : Int {
      get {
         return 0
      }
      set {}
   }
}

var singingAnimal : Singing = Human()
singingAnimal.sing()

//singingAnimal.dance() // 호출 불가

protocol Entertaining : Singing, Dancing {
}

class Human2 : Entertaining {
   func sing() {
      print("랄라라~")
   }
   
   func dance() {
      print("춤추기")
   }
}