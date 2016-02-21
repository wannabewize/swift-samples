class Rectangle {
   var width = 0
   var height : Int = 0 {
      // 프로퍼티에 값이 설정되기 전에 동작. 새로운 값은 newValue로 접근
      willSet {
         print("사각형 높이 변경 예정 : \(newValue)")
      }
      // 프로퍼티에 값이 설정된 후에 동작. 변경 전의 값은 oldValue로 접근
      didSet {
         // 0보다 작으면 0으로 변경
         if height < 0 {
            height = 0
         }
         print("사각형 높이 변경됨. 기존 높이 : \(oldValue) -> 새로운 높이 : \(height)")
      }
   }
}


var rect4 = Rectangle()
rect4.height = 50
rect4.height = -30
rect4.height		// 0