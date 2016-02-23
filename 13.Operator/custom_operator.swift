struct Point {
   var x : Int
   var y : Int
}

func +(left : Point, right : Point) -> Point {
   return Point(x: left.x + right.x, y: left.y + right.y)
}

infix operator **{associativity left precedence 145}

func **(point : Point, times : Int) -> Point {
   return Point(x: point.x * times, y: point.y * times)
}


var p1 = Point(x: 10, y: 10)
var p2 = p1 ** 3


var p3 = Point(x: 10, y: 10)
var p4 = Point(x: 20, y: 20)

var p5 = p3 + p4 ** 2
