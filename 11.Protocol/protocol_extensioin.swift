/*
 * 프로토콜 extension
 */

protocol Movable {
}

struct Human : Movable {
}

// 프로토콜 확장 – 구현 작성 가능
extension Movable {
   func move() {
      print("Go! go! go!")
   }
}

var man = Human()
man.move() // 기본 구현처럼 동작


protocol Flyable {
}

extension Flyable {
   func fly() {
      print("Fly me to the moon")
   }
}

class Superman : Movable, Flyable {
   // 프로토콜 구현을 재정의
   func move() {
      print("Move Fast")
   }
}

var superman = Superman()
superman.move()
superman.fly()

