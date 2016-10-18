/*
 * 클로저에서 접근한 객체를 소유한다.
 */

class Counter {
   var value : Int = 0
   
   func incresed() -> () -> Int {
      return {
         self.value += 1
         return self.value
      }
   }
   
   deinit {
      print("Deinit")
   }
}

print("== 첫번째 예제 시작")

// 객체 생성
print("객체 생성")
var obj : Counter! = Counter()

print("클로저 접근 및 사용")
let closure : () -> Int = obj.incresed()
print(closure())
print(closure())

// 객체 소유권 해제
print("객체 소유권 해제")
obj = nil

print("== 첫번째 예제 끝")

print("== 두번째 예제 시작")

print("객체 생성")
var obj2  : Counter! = Counter()

print("클로저 접근 및 사용")
var closure2 : ( ()->Int )! = obj2.incresed()

print(closure2())

print("객체 소유권 해제")
obj2 = nil
print("클로저 nil 대입")
closure2 = nil

print("== 두번째 예제 끝")



//
// 객체를 소유하지 않는 클로저
//

class Counter2 {
   var value : Int = 0
   
   // unowned를 이용한 객체 소유 방지
   func increment() -> () -> Int {
      return {
         [unowned self] in
         self.value += 1
         return self.value
      }
   }
   
   // weak를 이용한 객체 소유 방지
   func increment2() -> () -> Int {
      return {
         [weak self] in
         self?.value += 1
         return (self?.value)!
      }
   }
   
   deinit {
      print("Deinit")
   }
}

print("== 세번째 예제 시작")
print("객체 생성")
var obj3 : Counter2! = Counter2()

print("클로저 접근")
var closure3 : (()->Int)! = obj3.increment()
print(closure3())
print(closure3())

print("객체 소유권 해제")
obj3 = nil

// 객체가 해제됐으므로 호출시 에러
// closure3() // Error
print("== 세번째 예제 끝")

