/**
* 저장 프로퍼티와 연산 프로퍼티
*/
class Person {
   // 상수
   let thisYear = 2019

   // 저장 프로퍼티
   var birthYear : Int = 0
   
   // 계산 프로퍼티
   var age : Int {
      get {
         // 파라미터 타입과 같은 타입의 값 반환
         return thisYear - birthYear
      }
      set {
         // newValue로 설정되는 값 전달
         print("newValue : ",newValue)
         birthYear = thisYear - newValue
      }
   }
}


var iu = Person()
// 저장 프로퍼티 사용
iu.birthYear = 1993

// 계산 프로퍼티의 get 행위
let age = iu.age
age

// 계산 프로퍼티의 set 행위
iu.age = 23
let birthYear = iu.birthYear
