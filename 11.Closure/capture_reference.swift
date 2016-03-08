//
// 레퍼런스 타입의 객체 캡처
//
class MyClass {
   var value = 0
   func printValue() {
      print(value)
   }
}


func incrementBy2(amount : Int) -> () -> () {
   let countObj = MyClass()
   return {
      countObj.value += amount
      countObj.printValue()
   }
}


var step2 = incrementBy2(2)
step2()
step2()

var step3 = incrementBy2(3)
step3()
step3()
step3()
