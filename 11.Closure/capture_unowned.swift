class MyClass {
   var value = 0
   
   func increseFn() -> ()->() {
      return {
        [unowned self] in
         // [weak self] in
         print(self?.value++)
      }
   }
   
   deinit {
      print("MyClass 객체 해제")
   }
}

var obj : MyClass! = MyClass()
var closure = obj.increseFn()
closure()

obj = nil

closure()







