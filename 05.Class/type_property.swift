/**
 * 타입 프로퍼티
 */
class Rectangle {
   // 인스턴스 프로퍼티
   var width : Int = 0
   
   // 계산 타입 프로퍼티
   static var name : String {
      return "사각형"
   }
   // 저장 타입 프로퍼티
   static var edge = 4
}


// 인스턴스 프로퍼티 접근
var obj = Rectangle()
obj.width = 10

// 타입 프로퍼티 접근
print(Rectangle.edge) // 4
print(Rectangle.name)