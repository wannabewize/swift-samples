// sqrt 함수, M_PI
import Foundation


protocol SizeMeasurable {
   // 메소드 선언
   func size() -> Double
}


class Rectangle : SizeMeasurable {
   var width, height : Double
   init(width : Double, height : Double) {
      self.width = width
      self.height = height
   }
   func size() -> Double {
      return self.width * self.height
   }
}

class Circle : SizeMeasurable {
   var r : Double
   init(r : Double) {
      self.r = r
   }
   
   func size() -> Double {
      return r * r * M_PI
   }
}

class Triangle : SizeMeasurable {
   var a , b, c : Double
   
   init(a : Double, b : Double, c : Double) {
      self.a = a
      self.b = b
      self.c = c
   }
   
   func size() -> Double {
      // 세 변의 길이로 삼각형 넓이 구하기 - 헤론 공식
      let s : Double = ( a + b + c ) / 2
      let result = sqrt( s * (s - a) * (s - b) * (s - c) )
      return result
   }
}

var r = Rectangle(width: 10, height: 10)
print(r.size())

var c = Circle(r: 10)
print(c.size())

var t = Triangle(a: 3, b: 4, c: 5)
print(t.size())
