import Foundation

class Rectangle : NSObject {
   var width : Int
   var height : Int
   
   init(width : Int, height : Int) {
      self.width = width
      self.height = height
   }
   
   // isEqual 메소드 재정의
   override func isEqual(object: AnyObject?) -> Bool {
      // 옵셔널 타입의 파라미터, AnyObject 타입 비교
      if let other = object as? Rectangle {
         // 내용(가로와 세로 길이) 비교
         return self.width == other.width && self.height == other.height
      }
      return false
   }
}


//func ==(lhs : Rectangle, rhs : Rectangle) -> Bool {
//   return lhs.width == rhs.width && lhs.height == rhs.height
//}


let obj1 = Rectangle(width: 10, height: 10)
let obj2 = Rectangle(width: 10, height: 10)
let obj3 = Rectangle(width: 10, height: 20)

obj1.isEqual(obj2)
obj1 == obj3
