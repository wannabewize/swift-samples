/*
 * 클로저를 사용하는 API 작성하기
 */

//
// 클로저를 반환하는 함수
//

// ()->() 를 반환값의 타입으로 정의한 함수
func greeting() -> () -> Void {
   // 함수 타입 : () -> ()
   func sayGoodmorning() {
      print("Good Morning")
   }

   return sayGoodmorning
}

// 함수 호출 결과는 타입이 ()->()인 함수
let ret = greeting()
ret()

greeting()() // 붙여서도 사용


// Inline 방식
func greeting2() -> () -> () {
   return {
      () -> () in
      print("How are you?")
   }
}

let ret2 = greeting2()
ret2()

// Inline 방식2
func greeting3() -> () -> () {
   return {
      print("Fine Thank you and you?")
   }
}

let ret3 = greeting3()
ret3()


//
// 파라미터로 사용
//

func add(_ i : Int, _ j : Int, _ handler: (Int) -> Void ) {
   let sum = i + j
   // 파라미터로 전달된 클로저 실행.
   handler(sum)
}

add(3, 4, { (result : Int) -> Void in
   print("3 + 4 = \(result)")
})


// Trailing closure
add(5, 6) { (result) -> Void in
   print("5 + 6 = \(result)")
}

//
// Optional
//

func multiply(_ i : Int, _ j : Int, _ handler : ((Int) -> Void)? ) {
   let sum = i  * j
   if let closure = handler {
      closure(sum)
   }
}

multiply(7, 8, nil)
multiply(9, 10) { print($0) } // trailing closure
