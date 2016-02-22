import Foundation

class Shape {
   var edge : Int
   
   init(numberOfEdge : Int) {
      edge = numberOfEdge
   }
   
   func description() -> String {
      return "\(edge) 각형"
   }
   
   func size() -> Double {
      return 0
   }
}

// 자식 클래스 - 사각형
class Rectangle : Shape {
   var width : Double
   var height : Double
   
   // Designated Initializer
   init(width : Double, height : Double) {
      self.width = width
      self.height = height
      
      // 초기화 메소드 위임  - 부모 클래스의 Designated Initializer
      super.init(numberOfEdge: 4)
   }
   
   // Convenience Initializer
   convenience init() {
      // 초기화 메소드 위임 - 같은 클래스
      self.init(width : 0, height : 0)
   }
   
   // 재정의
   override func description() -> String {
      return "사각형 가로 \(width) 세로 \(height)"
   }
   
   // size 메소드 메소드
   override func size() -> Double {
      return Double(width * height)
   }
}

// 자식 클래스 - 삼각형
class Triangle : Shape {
   var a = 0.0
   var b = 0.0
   var c = 0.0
   
   // Designated Initializer
   init(a : Double, b : Double, c : Double) {
      self.a = a
      self.b = b
      self.c = c
      // 초기화 메소드 위임
      super.init(numberOfEdge: 3)
   }
   
   // 재정의
   override func description() -> String {
      return "삼각형 \(a), \(b), \(c)"
   }
   
   override func size() -> Double {
      // 세 변의 길이로 삼각형 넓이 구하기 - 헤론 공식
      let s : Double = ( a + b + c ) / 2
      let result = sqrt( s * (s - a) * (s - b) * (s - c) )
      return result
   }
}


var obj1 = Rectangle(width: 10, height: 20)
print("\(obj1.description()) , size : \(obj1.size())")

var obj2 = Triangle(a: 3, b: 4, c: 5)
print("\(obj2.description()), size : \(obj2.size())")


