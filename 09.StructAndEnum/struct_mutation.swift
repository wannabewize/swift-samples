struct Point {
   var x = 0
   var y = 0
   
   mutating func moveTo(x : Int, y : Int) {
      self.x = x
      self.y = y
   }
   
   // 상태 변경 불가 - mutating 필요
   func changeX(x : Int) {
      // self.x = x
   }
}


var p = Point()
p.changeX(10)

p.moveTo(10, y: 20)
