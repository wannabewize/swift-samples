/*
 * 프로토콜
 */

// 프로토콜 선언
protocol Singing {
   func sing()
}

// 클래스 채택
class Bird : Singing {
   func sing() {
      print("짹짹짹~")
   }
}

// 구조체 채택
struct Cat : Singing {
   func sing() {
      print("갸르릉 갸르릉")
   }
}

let sparrow = Bird()
sparrow.sing()

let kitty = Cat()
kitty.sing()


protocol Dancing {
   func dance()
}

// 다수의 프로토콜 채택
class Human : Dancing, Singing {
   func sing() {
      print("랄라라~")
   }
   
   func dance() {
      print("춤추기")
   }
}

let iu = Human()
iu.sing()
iu.dance()