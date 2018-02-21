/*
 * 셀렉터
 */

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


// Selector - outside
let sel1 = #selector(MyClass.greeting)
print(sel1)

let obj = MyClass()
print("셀렉터 반응 여부 : ", obj.responds(to: sel1))

// Selector - declared in Inside
obj.justDoIt()


// @objc를 이용한 ObjC 런타임
class MyClass2 {
   @objc func greeting() {
      print("Hello")
   }
}

let obj2 = MyClass2()
// 클래스 이름 대신 객체 참조 사용 가능
let sel2 = #selector(obj2.greeting)

extension MyClass {
   func greeting(person : String) {
      print("How are you? \(person)")
   }
   
   func greeting(who person : String) {
      print("How are you? \(person)")
   }
   
   func greeting(_ person : String){}
   
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

let sel3 = #selector(MyClass.greeting(person:))
let sel4 = #selector(MyClass.greeting(who:))
let sel5 = #selector(MyClass.greeting(_:))

print(sel3)
print(sel4)
print(sel5)


let sel6 = #selector(MyClass.greeting(person:emotion:))
let sel7 = #selector(MyClass.greeting(person:with:))
let sel8 = #selector(MyClass.greeting(who:emotion:))
let sel9 = #selector(MyClass.greeting(person:_:))

print(sel6)
print(sel7)
print(sel8)