/**
 * 타입 체크
 */

print("== Any 타입과 타입 체크")
var anyVal : Any = 3

if anyVal is Int {
   print("정수 타입")
}


//
// 클래스 상속과 타입 체크
//
print("== 클래스 상속과 타입 체크")
class Animal {
   var name : String!
   init(name : String) { self.name = name }
}

class Dog : Animal {}

class Cat : Animal {}

let raz = Cat(name: "라즈")
print("Cat type : ", raz is Cat) // true
print("Animal type : ", raz is Animal) // true
print("Doc type : ", raz is Dog) // false


//
// 프로토콜과 타입 체크
//
print("== 프로토콜과 타입 체크")
protocol Sing {}
protocol Dive {}

struct Bird : Sing {}

let sparrow = Bird()

print("프로토콜 Sing 채택 검사 : ",sparrow is Sing) // true
print("프로토콜 Dive 채택 검사 : ",sparrow is Dive) // false


//
// 함수 타입 체크
//
print("== 함수 타입 체크")
func sayHello() {
}
func say(what : String) {
}

print("sayHello is () -> Void :", sayHello is ()->Void)
print("say(what:) is () -> Void :", say is ()->Void)