class ClassA {
   // ClassB 참조
   var objB : ClassB!
   
   deinit {
      print("A객체 해제")
   }
}

class ClassB {
   // ClassA 참조
   var objA : ClassA!
   
   deinit {
      print("B객체 해제")
   }
}



var a : ClassA! = ClassA()
var b : ClassB! = ClassB()
a.objB = b
b.objA = a

a.objB = nil
a = nil
b = nil
