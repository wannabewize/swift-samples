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


print("객체 생성 후 상호 소유")
var a : ClassA! = ClassA()
var b : ClassB! = ClassB()
a.objB = b
b.objA = a

// 수동으로 상호 소유 관계를 해제하면 객체가 해제된다.
//a.objB = nil

print("두 객체 소유권 해제")
a = nil
b = nil
