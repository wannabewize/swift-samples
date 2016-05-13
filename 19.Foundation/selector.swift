import Foundation

class MyClass : NSObject {
   func greeting() {
      print("Hello")
   }
   
   func justDoIt() {
      let sel = #selector(greeting)
      print(sel)
   }
}

let obj = MyClass()

// Selector - outside
let sel1 = #selector(obj.greeting)
print(sel1)
print(obj.respondsToSelector(sel1))

// Selector - declared in Inside
obj.justDoIt()


class MyClass2 {
   @objc func greeting() {
      print("Hello")
   }
}

let obj2 = MyClass2()
let sel2 = #selector(obj2.greeting)

class MyClass3 : NSObject {
   func greeting(person : String) {
      print("How are you? \(person)")
   }
   
   func greeting(who person : String) {
      print("How are you? \(person)")
   }
   
   func greeting(person : String, emotion : String) {
   }
   
   func greeting(person : String, with emotion : String) {
   }
   
   // 첫 번째 파라미터에 외부 파라미터 이름 설정
   func greeting(who person : String, emotion : String) {
   }
   
   // 두 번째 파라미터에 외부 파라미터 이름 생략
   func greeting(person : String, _ emotion : String) {
   }
}

let obj3 = MyClass3()
let sel3 = #selector(obj3.greeting(_:))
let sel4 = #selector(obj3.greeting(who:))


let sel5 = #selector(obj3.greeting(_:emotion:))
let sel6 = #selector(obj3.greeting(_:with:))
let sel7 = #selector(obj3.greeting(who:emotion:))
let sel8 = #selector(obj3.greeting(_:_:))

print(sel5)
print(sel6)
print(sel7)
print(sel8)


class MyClass4 : NSObject {
   func greeting() {
      
   }
   
   func greeting(who : String) {
   }
   
   func justDoIt() {
      let sel1 = #selector(greeting as Void -> Void)
      print(sel1)
      
      let sel2 = #selector(greeting(_:))
      print(sel2)
   }
}

let obj4 = MyClass4()
obj4.justDoIt()


class MyClass5 : NSObject {
   static func goodbye() {}
   func justDoIt() {
      let sel = #selector(MyClass5.goodbye)
      print(sel)
   }
   
   static func goodnight() {}
   static func goodnight(who : String) {}
}

let sel9 = #selector(MyClass5.goodbye)
print(sel9)

let sel10 = #selector(MyClass5.goodbye as Void -> Void)
let sel11 = #selector(MyClass5.goodnight(_:))


class MyClass6 : NSObject {
   override init() {}
   init(name : String) {}
   
   func justDoIt() {
      let sel = #selector(MyClass6.init(name:))
   }
}

let sel12 = #selector(MyClass6.init as Void -> MyClass6)
let sel13 = #selector(MyClass6.init(name:))


class YesClass : NSObject {
   func sayYes() {
      print("YES!")
   }
}

let yes = YesClass()
yes.respondsToSelector(#selector(yes.sayYes))

// 같은 클래스의 다른 객체에 검사하기
let yes2 = YesClass()
yes2.respondsToSelector(#selector(yes.sayYes))

class NoClass : NSObject {
   func sayNo() {
      print("NO!")
   }
}

let no = NoClass()
no.respondsToSelector(#selector(yes.sayYes))
