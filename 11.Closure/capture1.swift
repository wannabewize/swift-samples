class MyClass {
   var value = "Closure Capturing"
   deinit {
      print("MyClass 객체 해제")
   }
}

//func myFunction() {
//   let obj = MyClass()
//   print(obj.value)
//}
//
//myFunction()


func myFunction2() -> () -> () {
   let obj = MyClass()
   return { () -> () in
      print(obj.value)
   }
}

var closure1 = myFunction2()

var closure2 : (() -> ())! = myFunction2()
closure2 = nil