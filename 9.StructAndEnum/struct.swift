struct Point {
   // 초기화가 필요한 프로퍼티
   var x : Int
   var y : Int
   
   // Initializer 작성
   init() {
      self.x = 0
      self.y = 0
   }
}

var obj = Point()

// Error : Initializer를 작성했기 때문에 자동 생성 안됨
var obj2 = Point(x : 10, y : 10)