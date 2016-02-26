class Animal {
   var name : String
   init(_ name : String) {
      self.name = name
   }
}

class Dog : Animal {
}

class Cat : Animal {
}


let raz = Cat("라즈")
raz is Cat
raz is Animal
raz is Dog


protocol Sing {
}

raz is Sing

class Fish {
}

let animal = raz as Animal
let dog1 = raz as? Dog    // 옵셔널 타입으로 반환. nil
//let dog2 = raz as! Dog    // Error




if let dog = raz as? Fish {
   print("물고기")
}
else {
   print("물고기 아님")
}

