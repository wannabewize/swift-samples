class Rectangle {
   // 저장 프로퍼티
   var width = 0, height = 0
   
   // 계산 프로퍼티
   var isSquare : Bool {
      return width == height
   }
   
   // 메소드
   func size() -> Int {
      return width * height
   }
}

// 클래스 상속
class Square : Rectangle {
   // 부모 클래스의 size 메소드 재정의
   override func size() -> Int {
      return width * width
   }
   // 저장 프로퍼티의 감시자 재정의
   override var width : Int {
      didSet {
         if height != width {
            height = width
         }
      }
   }
   
   // 계산 프로퍼티의 get/set 기능 재정의
   override var isSquare : Bool {
      return true
   }
}


var square = Square()
square.width = 90
square.height = 100
square.isSquare
square.size()
