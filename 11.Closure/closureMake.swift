// 파라미터와 반환값이 없는 함수 - 함수 타입 : () -> ()
func sayGoodmorning() {
   print("Good Morning")
}

// ()->() 를 반환값의 타입으로 정의한 함수
func greeting() -> (() -> ()) {
   return sayGoodmorning
}

// 함수 호출 결과는 타입이 ()->()인 함수
let ret = greeting()
ret()

//
// Inline 방식
//

func greeting2() -> (()->()) {
   return {
      () -> () in
      print("How are you?")
   }
}


var str = "Bye bye"
let ret2 = greeting2()
ret2()

//
// 파라미터로 사용
//

func add(i : Int, _ j : Int, _ handler: (Int) -> Void ) {
   let sum = i + j
   // 파라미터로 전달된 클로저 실행.
   handler(sum)
}

add(3, 4, { (result : Int) -> Void in
   print("3 + 4 = \(result)")
})


add(5, 6) { (result) -> Void in
   print("5 + 6 = \(result)")
}

//
// Optional
//

func multiply(i : Int, _ j : Int, _ handler : ((Int) -> Void)? ) {
   let sum = i  * j
   if let closure = handler {
      closure(sum)
   }
}

multiply(7, 8, nil)
multiply(9, 10){ print($0) }


//
// 프로퍼티
//

class MyClass {
   var property : (()->Int)!
}

var obj = MyClass()
obj.property = { () -> Int in return 0 }

obj.property()
