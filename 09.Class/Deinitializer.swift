/**
* 메모리 해제시 동작하는 deini
*/
class MyClass {
   deinit {
      // 객체 해제시 동작
      print("deinit")
   }
}


var obj : MyClass! = MyClass()
obj = nil

print("== END ==")
