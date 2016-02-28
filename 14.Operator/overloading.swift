struct Point {
   var x : Int
   var y : Int
}

func +(left : Point, right : Point) -> Point {
   return Point(x: left.x + right.x, y: left.y + right.y)
}

var p1 = Point(x: 10, y: 10)
var p2 = Point(x: 20, y: 20)

print("Point + Point : ", p1 + p2)			// (30, 30)



// 단항 연산자. 후위 연산자.
postfix func ++(inout point : Point) -> Point {
   point.x++
   point.y++
   return point
}

var p3 = Point(x: 10, y: 10)
print("Point++ : ", p3++)			// (11,11)


prefix func -(point : Point) -> Point {
   var another = point
   another.x = -point.x
   another.y = -point.y
   return another
}

print("-Point : ", -p1)