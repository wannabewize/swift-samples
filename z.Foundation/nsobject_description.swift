/*
 * 객체 설명
 */

import Foundation

NSLog("Hello %@", "Foundation")
NSLog("%d + %d = %d", 1, 2, (1+2))

class Rectangle : NSObject {
   var width = 0
   var height = 0
   
   override var description: String {
      return "사각형 가로 : \(width) - 세로 : \(height)"
   }
}


let obj = Rectangle()
obj.width = 10
obj.height = 20

NSLog("%@", obj)
print("\(obj)")
