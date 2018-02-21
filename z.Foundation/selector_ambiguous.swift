/*
 * selector ambiguous
 */

import Foundation

class MyClass : NSObject {
   func greeting() {}
   
   func greeting(who : String) {}
}

// ambiguous Error
//let sel = #selector(MyClass.greeting)

// reference error
//let sel2 = #selector(MyClass.greeting as () -> () )

// ambiguous error를 피하기 위한 방법
let obj = MyClass()
let sel3 = #selector(obj.greeting as ()->())
print(sel3)

let sel4 = #selector(MyClass.greeting(who:))
print(sel4)