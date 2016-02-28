// 함수 정의
func sayHello() {
   print("Hello")
}

// 함수 호출
sayHello()
// hello의 타입은?
var hello = sayHello
hello()

// 파라미터가 1개인 함수
func greet(who : String) {
   print("Hello : \(who)")
}

// 파라미터의 타입 : () -> ().
func greet(greeting : Void -> Void) {
   // 파라미터로 전달받은 함수 실행
   print("파라미터 타입이 Void -> Void인 함수 실행")
   greeting()
}

greet(hello)


// 함수 타입 : String -> ()
func sayByeBye(who : String) {
   print("안녕~ ", who)
}

func greet(greeting : String -> ()) {
   greeting("IU")
}

greet(sayByeBye)


// 함수 타입 : (String, String) -> (), (String, String) -> Void
func say(who : String, what : String) {
}

func greet(greeting : (String, String) -> ()) {
   greeting("","")
}
greet(say)


// 함수 타입 : (Int, Int) -> Int
func add(i : Int, j : Int) -> Int {
   return i + j
}

// 함수 타입 : (Int, Int) -> Int
func multiply(i : Int, j : Int) -> Int {
   return i * j
}