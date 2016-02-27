protocol MyProtocol {
}


class MyClass : MyProtocol {
}


extension MyProtocol {
   func sayGoodbye() {
      print("Good bye")
   }
}



var obj = MyClass()
obj.sayGoodbye()


class YourClass : MyProtocol {
   func sayGoodbye() {
      print("Bye Bye")
   }
}


var obj2 = YourClass()
obj2.sayGoodbye()

