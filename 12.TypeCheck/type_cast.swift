//
// 타입 변환
//

let anyVal : Any = 3

let intVal1 = anyVal as? Int // 옵셔널 타입
print(intVal1)

let intVal2 = anyVal as! Int // Non-Optional Type
print(intVal2)

let strVal1 = anyVal as? String // 변환 실패. nil
//let strVal2 = anyVal as! String // 변환 실패. 런타임 에러

// 옵셔널 바인딩
if let intVal3 = anyVal as? Int {
   print("변환 성공")
}


// 클래스 상속
class Animal {}

class Dog : Animal {}

class Cat : Animal {}

let raz = Cat()

let animal = raz as Animal // as 가능


// Dog 객체를 Animal 타입으로
let obj : Animal = Dog()
// Downcasting은 변환이 100% 가능하지 않다.
//let doggy1 = obj as Dog // 컴파일 에러
let doggy2 = obj as? Dog // 변환 성공. 옵셔널 타입
let doggy3 = obj as! Dog // 변환 성공. Non-Optional Type

let doggy4 = obj as? Cat // 변환 실패 - nil
//let doggy5 = obj as! Cat // 변환 실패. 런타임 에러


//
// 프로토콜과 타입 변환
//

protocol Sing {}

struct Bird : Sing {}

let sparrow = Bird()

let singing = sparrow as Sing