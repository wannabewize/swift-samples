class MyClass {
   deinit {
      print("로컬 변수로 선언한 객체 해제")
   }
}

class MyClass2 {
   deinit {
      print("프로퍼티로 선언한 객체 해제")
   }
}


class MyApplication {
   // 프로퍼티로 선언
   var obj : MyClass2
   
   init() {
      obj = MyClass2()
   }
   
   func sayHello() {
      let obj2 = MyClass()
      print(obj2) // 경고 제거용
      print("함수 호출 : Hello World!")
   }
}

var app : MyApplication! = MyApplication()

app.sayHello()
print("함수 호출 끝")
