//
// 구조체, Enum extension
//
import Foundation


struct Cat {}

extension Cat {
   // 계산 프로퍼티
   var averageLife : Int { return 10 }
   
   // 메소드
   func jump() {
      print("점프")
   }
}

let kitty = Cat()
kitty.jump()
print(kitty.averageLife)

//
// Enum extension
//
enum Favorite : Int {
   case Movie
   case Drive
   case Cycle
}

extension Favorite {
   // 타입 계산 프로퍼티
   static var random : Favorite {
      let r = Int(arc4random_uniform(3)) // 0~2 난수
      return Favorite(rawValue: r)!
   }
}

let randomFavorite = Favorite.random
print("Random Favorite : ", randomFavorite.rawValue)