/*
 * 연산자 재정의
 */

struct Point {
   var x : Int
   var y : Int
   
   static func +(left : Point, right : Point) -> Point {
      // 새로운 객체 반환
      return Point(x: left.x + right.x, y: left.y + right.y)
   }
}

// Swift2 방식. Swift3에서도 사용 가능
/*
func +(left : Point, right : Point) -> Point {
   return Point(x: left.x + right.x, y: left.y + right.y)
}
*/

var p1 = Point(x: 10, y: 10)
var p2 = Point(x: 20, y: 20)

print("Point + Point : ", p1 + p2)			// (30, 30)


extension Point {
   static // 단항 연산자. 후위 연산자.
      postfix func ++(point : inout Point) -> Point {
      point.x += 1
      point.y += 1
      return point
   }
}


var p3 = Point(x: 10, y: 10)
print("Point++ : ", p3++)			// (11,11)

extension Point {
   static prefix func -(point : Point) -> Point {
      var another = point
      another.x = -point.x
      another.y = -point.y
      return another
   }
}

print("-Point : ", -p1)