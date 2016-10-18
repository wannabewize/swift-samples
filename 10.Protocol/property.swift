/*
 * 프로토콜과 프로퍼티
 */

// 프로퍼티의 get/set 설정
protocol HoldingBreath {
   var duration : Int { get set }
}

// 저장 프로퍼티로 구현
class Dolphin : HoldingBreath {
   var duration : Int = 9999
   
}

// 계산 프로퍼티로 구현
class Human : HoldingBreath {
   var duration : Int {
      get {
         return 60
      }
      set {}
   }
}

let dolphin = Dolphin()
print(dolphin.duration)

let diver = Human()
print(diver.duration)
