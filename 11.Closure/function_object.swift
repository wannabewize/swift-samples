/*
 * 클로저와 함수 객체
 */

// 함수 정의
func sayHello() {
   print("Hello")
}

// 함수 호출
sayHello()

// hello의 타입은?
let hello = sayHello
hello()

