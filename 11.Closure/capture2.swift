import Foundation

func incrementBy(amount : Int) -> () -> () {
   // 클로저에서 count 캡춰
   var count = 0
   return {
      count += amount
      print(count)
   }
}

var step2 = incrementBy(2)
step2() // 2
step2() // 4

var step3 = incrementBy(3)
step3() // 3
step3() // 6
step3() // 9