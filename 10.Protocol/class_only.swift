protocol MyProtocol : class {
}

class MyClass {
   weak var property : MyProtocol!
}

var obj = MyClass()
