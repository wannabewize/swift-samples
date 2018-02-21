/*
 * 타입 메소드에 대한 셀렉터
 */

import Foundation

class MyClass : NSObject {
   
   
   static func goodbye() {}
   
   static func goodnight() {}
   
   static func goodnight(who : String) {}
}

let sel1 = #selector(MyClass.goodbye)
print(sel1)

let sel2 = #selector(MyClass.goodnight as () -> () )
print(sel2)

let sel3 = #selector(MyClass.goodnight(who:))
print(sel3)