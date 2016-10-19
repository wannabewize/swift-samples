/*
 * 객체 비교
 */

struct Size {
   var width, height : Int
}

extension Size : Equatable {
   // == 연산자 기능 정의
   static func ==(lhs: Size, rhs: Size) -> Bool {
      return lhs.width == rhs.width && lhs.height == rhs.height
   }
}

var obj1 = Size(width: 10, height: 10)
var obj2 = Size(width: 10, height: 10)
var obj3 = Size(width: 20, height: 20)

print("Size(10,10) == Size(10,10) : ", obj1 == obj2) // true
print("Size(10,10) == Size(20,20) : ", obj1 == obj3) // false



extension Size : Comparable {
   func size() -> Int {
      return width * height
   }
   
   static func <=(lhs: Size, rhs: Size) -> Bool {
      return lhs.size() <= rhs.size()
   }
   
   static func >=(lhs: Size, rhs: Size) -> Bool {
      return lhs.size() >= rhs.size()
   }
   
   static func >(lhs: Size, rhs: Size) -> Bool {
      return lhs.size() > rhs.size()
   }
   
   static func <(lhs: Size, rhs: Size) -> Bool {
      return lhs.size() < rhs.size()
   }
}

print("Size(10,10) <= Size(10,10) : ", obj1 <= obj2) // true
print("Size(10,10) < Size(20,20) : ", obj1 < obj3) // true
print("Size(10,10) > Size(20, 20) : ", obj2 > obj3)
