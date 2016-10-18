/*
 * 함수 타입
 */

// 함수 타입 : () -> (), () -> Void, (Void) -> (), (Void) -> Void
func sayHello() {
   print("Hello")
}

// 파라미터의 타입 : () -> ().
func greet1(_ greeting : () -> Void) {
   // 파라미터로 전달받은 함수 실행
   print("파라미터 타입이 () -> Void인 함수 실행")
   greeting()
}

// 함수의 참조를 이용
let hello = sayHello
greet1(hello)

// 직접 함수 이름 입력
greet1(sayHello)


// 파라미터가 1개. 함수 타입 : String -> Void, String -> ()
func sayBye(who : String) {
   print("byebye \(who)")
}

func greet2(_ greeting : (String) -> Void) {
   print("파라미터 타입이 String -> Void 함수 실행")
   greeting("IU")
}

greet2(sayBye)

// 파라미터가 2개, 반환 타입이 있는 함수. 함수 타입 : (String, String) -> (), (String, String) -> Void
func say(who : String, what : String) {
   print("say \(what) to \(who)")
}

func greet3(_ greeting : (String, String) -> ()) {
   print("파라미터 타입이 (String, String) -> Void 함수 실행")
   greeting("IU","좋은날")
}

greet3(say)

// 다음 두 함수의 함수 타입은 같다.

// 함수 타입 : (Int, Int) -> Int
func add(i : Int, j : Int) -> Int {
   return i + j
}

// 함수 타입 : (Int, Int) -> Int
func multiply(i : Int, j : Int) -> Int {
   return i * j
}