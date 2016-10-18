//
// Overroading
//

func sayHello(msg : String) {
   print("sayHello(msg:)")
}

func sayHello(_ msg : String) {
   print("sayHello(_:)")
}

func sayHello(_ times : Int) {
   print("sayHello(_:). Int type argument")
}

sayHello("msg")
sayHello(msg : "msg")
sayHello(10)

