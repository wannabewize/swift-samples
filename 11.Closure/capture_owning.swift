class MyClass {
   var value = 0

   deinit {
      print("MyClass 객체 해제 : \(value)")
   }
   
   func printValue() {
      print(value)
   }
}


func incrementBy3(amount : Int) -> () -> () {
   let obj = MyClass()
   
   return {
      obj.value += amount
      obj.printValue()
   }
}


var step10 : (()->())! = incrementBy3(10)
step10()
step10()

step10 = nil