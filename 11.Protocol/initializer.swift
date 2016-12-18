/*
 * 프로토콜 내 Initializer
 */

// Initializer
protocol Named {
   // Initializer
   init(name : String)
   
   // Failable Initializer
   init?()
}

class Monster : Named {
   let name : String
   // required로 작성
   required init(name: String) {
      self.name = name
   }
   
   // Failable Initializer는 non-Failable Initializer로 구현 가능
   required init() {
      self.name = "무명"
   }
}

var obj1 = Monster()
print(obj1)


var obj2 = Monster(name : "네임드")
print(obj2)