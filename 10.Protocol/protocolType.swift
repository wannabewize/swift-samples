protocol Singing {
   func sing()
}

class Human : Singing {
   func sing() {
      print("Sing Sing Sing")
   }
   
   func drink() {
      print("Drink")
   }
}

// 클래스 타입으로 선언한 객체
var obj1 : Human = Human()
// 프로토콜에 선언한 메소드 사용
obj1.sing()
// 프로토콜에 선언하지는 않았지만 클래스에 작성한 메소드
obj1.drink()

// 프로토콜 타입으로 선언한 변수
var obj2 : Singing = Human()
// 프로토콜에 선언한 메소드 사용
obj2.sing()
// 프로토콜에 선언하지는 않았지만 클래스에 작성한 메소드 - 에러
//obj2.drink()


func sayHello(who : String, and : Singing) {
}

protocol Dancing {
   func dance()
}


// 변수 선언
class Idol : Singing, Dancing {
   func sing() {
      print("Sing Sing Sing")
   }
   
   func dance() {
      print("Dance Dance")
   }
}

func entertain(who : protocol<Singing, Dancing>) {
   
}

