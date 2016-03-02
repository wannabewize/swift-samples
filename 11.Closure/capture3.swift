// Capturing
class MyClass {
   var value = "클로저 캡춰 테스트"
   
   func closureTest() -> () -> () {
      return {
         print(self.value)
      }
   }
   
   func closureTest2() -> () -> () {
      return {
         [unowned self] in
         print(self.value)
      }
   }
   
   func closureTest3() -> () -> () {
      return {
         [weak self] in
         print(self?.value)
      }
   }
   
   deinit {
      print("MyClass 객체 해제")
   }
}

print("== self를 캡춰하는 클로저 예제 시작")
var obj : MyClass! = MyClass()
var closure = obj.closureTest()
closure()
obj = nil

print("== self를 캡춰하지 않는 클로서 예제. unowned self")
var obj2 : MyClass! = MyClass()

var closure2 = obj2.closureTest2()
closure2()
// self 해제
obj2 = nil

// Error.
//closure2()


print("== self를 캡춰하지 않는 클로서 예제. weak self")
var obj3 : MyClass! = MyClass()

var closure3 = obj3.closureTest3()
closure3()
// self 해제
obj3 = nil

// Error.
closure3()