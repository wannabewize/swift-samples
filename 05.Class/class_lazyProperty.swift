class Person {
   lazy var phone = Phone()
}

class Phone {
   var number : String
   init() {
      print("Phone 객체 생성")
      number = "010-1234-5678"
   }
}

// 객체가 생성되지만 Phone 객체는 생성 안됨
print("Person 객체 생성")
let obj = Person()

// lazy 프로퍼티에 접근. Phone 객체 생성(초기에만)
print("phone에 접근")
print(obj.phone.number)