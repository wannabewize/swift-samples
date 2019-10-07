//
// 값 읽기
//
print("= Read Value")
func greeting() -> () -> () {
   let str = "Hello"
   return {
      //      () -> () in
      print(str)
   }
}

let str = "Good Morning"
let ret = greeting()
ret() // "Hello" 출력


func increment() -> (Int) -> Int {
   var count = 0
   return {
      count += $0
      return count
   }
}


//
// 값을 쓰기
//
print("= Write Value")
func increment(by amount : Int) -> () -> () {
   // 클로저에서 count 캡춰
   var count = 0
   return {
      count += amount
      print(count)
   }
}

var step2 = increment(by: 2)
step2() // 2
step2() // 4

var step3 = increment(by: 3)
step3() // 3
step3() // 6
step3() // 9



//
// 레퍼런스 타입의 객체 캡처
//
print("= Capture Reference")
class MyClass {
   var value = 0
   func printValue() {
      print(value)
   }
}


func increment2(by amount : Int) -> () -> () {
   let countObj = MyClass()
   return {
      countObj.value += amount
      countObj.printValue()
   }
}


var step4 = increment2(by: 2)
step4()
step4()

var step5 = increment2(by: 3)
step5()
step5()
step5()
