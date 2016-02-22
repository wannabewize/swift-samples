class MyClass {
   deinit {
      print("메모리에서 해제")
   }
}


class MyApplication {
   // 프로퍼티로 선언
   var obj : MyClass!
   
   init() {
      obj = MyClass()
   }
   
   func sayHello() {
      print("Hello World!")
   }
}


var app : MyApplication! = MyApplication()
app.sayHello()

app = nil
