protocol MyProtocol {
}

struct MyStruct : MyProtocol {
}

extension MyProtocol {
   func sayGoodbye() {
      print("Good bye")
   }
}

var obj = MyStruct()
obj.sayGoodbye()


class YourClass : MyProtocol {
   func sayGoodbye() {
      print("Bye Bye")
   }
}

var obj2 = YourClass()
obj2.sayGoodbye()

