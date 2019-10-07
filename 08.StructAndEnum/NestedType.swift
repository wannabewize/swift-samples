/*
 * 타입 내장
 */

struct Rectangle {
   struct Point {
      var x, y : Int
   }
   
   struct Size {
      var width, height : Int
   }
   
   var origin : Point
   var size : Size
   
   init(origin : Point, size : Size) {
      self.origin = origin
      self.size = size
   }
}

let point = Rectangle.Point(x: 10, y: 10)
print("Rectangle.Point : ", point)

let size = Rectangle.Size(width: 100, height: 100)
print("Rectangle.Size : ", size)

let obj = Rectangle(origin: point, size: size)
