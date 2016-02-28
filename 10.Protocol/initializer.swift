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
   
   required init() {
      self.name = "무명"
   }
}

var obj1 = Monster()
print(obj1)


var obj2 = Monster(name : "네임드")
print(obj2)