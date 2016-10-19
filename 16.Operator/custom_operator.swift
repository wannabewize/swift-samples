/*
 * 커스텀 연산자
 */

struct Point {
   var x : Int
   var y : Int
}


// 새로운 연산자 정의

infix operator **

extension Point {
   static func **(point : Point, times : Int) -> Point {
      return Point(x: point.x * times, y: point.y * times)
   }
}

let p1 = Point(x: 10, y: 10)
let p2 = p1 ** 3
print("Point(10,10) ** 3 : ", p2)


//
// 기존 연산자와 함께 사용하기
// SE0077
// https://github.com/apple/swift-evolution/blob/master/proposals/0077-operator-precedence.md
//

// 곱셈과 덧셈 중간 우선도, 왼쪽 결합
precedencegroup customPrecedence {
   higherThan : AdditionPrecedence
   lowerThan : MultiplicationPrecedence
   associativity : left
}

infix operator *** : customPrecedence

extension Point {
   static func +(left : Point, right : Point) -> Point {
      return Point(x: left.x + right.x, y: left.y + right.y)
   }
   
   static func ***(point : Point, times : Int) -> Point {
      return Point(x: point.x * times, y: point.y * times)
   }
}


let p3 = Point(x: 10, y: 10)
let p4 = Point(x: 20, y: 20)


// +, *** 연산자 함께 사용하기. *** 연산자가 + 보다 먼저 동작
let p5 = p3 + p4 *** 2
print("Point(10,10) + Point(20, 20) *** 2 : ", p5)
