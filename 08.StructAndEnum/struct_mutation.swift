/*
 * 구조체 - mutation
 */

struct Point {
   var x = 0
   var y = 0
   
   mutating func moveTo(x : Int, y : Int) {
      self.x = x
      self.y = y
      print("")
   }
   
   // 상태 변경 불가 - mutating 필요
   func change(x : Int) {
      // self.x = x // 에러
   }
}


var p = Point()
p.change(x:10)

p.moveTo(x:10, y: 20)
