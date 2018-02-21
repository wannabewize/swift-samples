/*
 * Struct 정의와 객체 생성
 */

// Initializer가 없는 Struct
struct Point {
   var x : Int = 0
   var y : Int = 0
}

var obj1 = Point()
// 프로퍼티로 자동 생성된 Initializer
var obj2 = Point(x : 10, y : 10)

// Initializer를 생성한 Struct
struct Point2 {
   // 초기화가 필요한 프로퍼티
   var x : Int
   var y : Int
   
   // Initializer 작성
   init() {
      self.x = 0
      self.y = 0
   }
}


var obj3 = Point2()
// Error : Initializer를 작성했기 때문에 자동 생성 안됨
// var obj4 = Point2(x : 10, y : 10)
