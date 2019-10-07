/**
 * Failable Initializer
 */
class Person {
   var birthYear : Int
   
   init?(birthYear : Int) {
      // 초기화 조건 검사 - 실패시 nil 반환
      if birthYear <= 1900 {
         return nil
      }
      else {
         // 초기값과 함께 선언한 프로퍼티는 초기화
         self.birthYear = birthYear
      }
   }
   deinit {
      // 객체 해제시 동작
      print("deinit")
   }
}
// nil 반환 - 옵셔널 타입
let obj1 = Person(birthYear: 1890)
print(obj1)

// 강제 언래핑
var obj2 = Person(birthYear: 1990)!
print(obj2)

// 옵셔널 바인딩
if let obj3 = Person(birthYear: 2000) {
   print(obj3)
}