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
print("Point(10,10) ** 3 : ", p2)


var p3 = Point(x: 10, y: 10)
var p4 = Point(x: 20, y: 20)

// +, ** 연산자 함께 사용하기
var p5 = p3 + p4 ** 2
print("Point(10,10) + Point(20, 20) ** 2 : ", p5)
