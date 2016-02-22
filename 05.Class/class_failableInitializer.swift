class Person {
   var birthYear : Int
   
   init?(birthYear : Int) {
      // 초기화 조건 검사 - 실패시 nil 반환
      if birthYear <= 1900 {
         // nil반환 전 모든 프로퍼티는 초기화돼야 한다.
         self.birthYear = 1901
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

// 음수를 입력해서 객체 생성 실패
var obj1 = Person(birthYear: -1990)
print(obj1) // nil, obj는 옵셔널 타입

// 객체 생성 성공
var obj2 = Person(birthYear: 1990)
print(obj2) // 객체 생성 성공. 옵셔널 타입
