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