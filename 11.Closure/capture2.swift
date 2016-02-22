// Capturing

class MyClass {
   var value = "클로저 캡춰 테스트"
   
   func normalFunction() {
      print(self.value)
   }
   
   func closureTest() -> () -> () {
      // [unowned self]
      return { () -> () in
         print(self.value)
      }
   }
   
   deinit {
      print("MyClass 객체 해제")
   }
}


print("== 클로저 사용하지 않는 메소드 예제 시작")
var obj : MyClass! = MyClass()
obj.normalFunction()
// 객체 해제
obj = nil

print("== self를 캡춰하는 클로저 예제 시작")
var obj2 : MyClass! = MyClass()
var closure2 = obj2.closureTest()
closure2()
obj2 = nil

print("== self를 캡춰하는 클로저와 클로저를 수동으로 해제하는 예제")
var obj3 : MyClass! = MyClass()
var closure3 : (()->())! = obj3.closureTest()
closure3()
obj3 = nil
closure3 = nil


class MyClass2 {
   var value = "클로저 캡춰 테스트"
   
   func closureTest() -> () -> () {
      return { [unowned self] () -> () in
         print(self.value)
      }
   }
   
   deinit {
      print("MyClass2 객체 해제")
   }
}

print("== self를 캡춰하지 않는 클로서 예제")
var obj4 : MyClass2! = MyClass2()
var closure4 = obj4.closureTest()
closure4()
// self 해제
obj4 = nil

// Error.
//closure4()

