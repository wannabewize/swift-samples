struct Size : Equatable {
   var width, height : Int
}

// == 연산자 기능 정의
func ==(lhs: Size, rhs: Size) -> Bool {
   return lhs.width == rhs.width && lhs.height == rhs.height
}



var obj1 = Size(width: 10, height: 10)
var obj2 = Size(width: 10, height: 10)
var obj3 = Size(width: 20, height: 20)

obj1 == obj2 // true
obj1 == obj3 // false



extension Size : Comparable {
   func size() -> Int {
      return width * height
   }
}

func <=(lhs: Size, rhs: Size) -> Bool {
   return lhs.size() <= rhs.size()
}

func >=(lhs: Size, rhs: Size) -> Bool {
   return lhs.size() >= rhs.size()
}
func >(lhs: Size, rhs: Size) -> Bool {
   return lhs.size() > rhs.size()
}

func <(lhs: Size, rhs: Size) -> Bool {
   return lhs.size() < rhs.size()
}


print("\(obj1 <= obj2)") // true
print("\(obj1 < obj3)") // true
obj2 > obj3
