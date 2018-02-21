class Person {
   var phone : Phone!
   deinit {
      print("Person 객체 해제")
   }
}

class Phone {
   // 소유하지 않는 참조. weak는 옵셔널로만 선언 가능
   weak var owner : Person?
   deinit {
      print("Phone 객체 해제")
   }
}


var owner : Person! = Person()
var iphone : Phone! = Phone()

iphone.owner = owner
owner.phone = iphone

owner = nil
print(iphone.owner) // nil
iphone = nil
