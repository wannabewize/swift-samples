class Rectangle {
   var width : Int
   var height : Int
   
   // 프로퍼티의 값을 기본 값으로 초기화
   init() {
      width = 0
      height = 0
   }
   
   // 파라미터가 있는 Initializer
   init(width : Int, height : Int) {
      self.width =  width
      self.height = height
   }
}


var rect = Rectangle()

var rect2 = Rectangle(width: 10, height: 20)