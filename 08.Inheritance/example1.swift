/*
 * 다각형을 다루기 위한 부모 클래스 Shape에 Failable Intializer와 non-Failable Initializer
 * 자식 클래스인 Rectangle에 초기화 메소드를 작성한 예제
 */

class Shape {
   var edge : Int
   
   // Failable Initializer
   init?(numberOfEdge : Int) {
      if numberOfEdge < 1 {
         edge = 0
         return nil
      }
      else {
         edge = numberOfEdge
      }
   }
   
   // Designated Initializer
   init() {
      edge = 0
   }
}


class Rectangle : Shape {
   var width = 0
   var height = 0
   
   override init() {
      super.init()
   }
   
   // Failable Initializer
   init?(width : Int, height : Int) {
      // 부모 클래스의 Failable Initializer로 위임 -> Failable Initializer
      super.init(numberOfEdge: 4)
      
      // 초기값과 함께 선언한 프로퍼티는 초기화 조건 체크 이후에 초기화 가능
      if width < 0 || height < 0 {
         return nil
      }
      else {
         self.width = width
         self.height = height
      }
   }
}


let rect1 : Rectangle = Rectangle()

// Failable Initializer로 객체 생성
let rect2 : Rectangle? = Rectangle(width: 10, height: 10)
let rect3 : Rectangle? = Rectangle(width: 10, height: -10) // nil
