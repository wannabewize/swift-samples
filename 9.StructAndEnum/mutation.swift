struct Point {
   var x = 0
   var y = 0
   
   mutating func moveTo(x : Int, y : Int) {
      self.x = x
      self.y = y
   }
}


var p = Point()
p.moveTo(10, y: 20)
