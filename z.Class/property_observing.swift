/**
 * Property value-change Observing
 */
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
   
   init() {
      // Initializer에서 프로퍼티 값 변경에는 동작하지 않는다.
      width = 1
      height = 1
   }
}


print("== 객체 생성")
var obj = Rectangle()

print("== 프로퍼티 변경 시작")
obj.height = 50
obj.height = -30
print(obj.height)		// 0
