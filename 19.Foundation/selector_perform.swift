/*
 * 셀렉터 동작 체크, 실행
 */

import Foundation

class MyClass : NSObject {
   func sayHello() {
      print("Hello")
   }
   
   func greet(who : String) {
      print("Hello \(who)")
   }
   
   static func greet(who : String) {
      print("Static Hello : \(who)")
   }
}

let obj = MyClass()

// 셀렉터 검사
let sel = #selector(MyClass.sayHello)
if obj.responds(to: sel) {
   print("셀렉터 동작 확인")
   obj.perform(sel)
}
else {
   print("셀렉터 동작 안함")
}


// 파라미터가 있는 셀렉터 실행
obj.perform(#selector(MyClass.greet(who:)), with: "IU")

// 타입 메소드의 셀렉터 실행
MyClass.perform(#selector(MyClass.greet(who:)), with: "SH")