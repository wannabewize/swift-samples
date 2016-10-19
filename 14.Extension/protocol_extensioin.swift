protocol Movable {   
}

// 프로토콜 확장 – 구현 작성 가능
extension Movable {
   func move() {
      print("Go! go! go!")
   }
}

struct Human : Movable {   
}

var man = Human()
man.move()



protocol Flyable {
}

extension Flyable {
   func fly() {
      print("Fly me to the moon")
   }
}

class Superman : Movable, Flyable {   
   func move() {
      print("Move Fast")
   }
}

var superman = Superman()
superman.move()
superman.fly()

