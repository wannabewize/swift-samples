class MyClass {
   deinit {
      print("메모리에서 해제")
   }
}


var obj : MyClass! = MyClass()
var array = [obj]
obj = nil

array.removeAtIndex(0)
