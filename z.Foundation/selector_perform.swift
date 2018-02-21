/*
 * 셀렉터 동작 체크, 실행
 */

import Foundation

class SayClass : NSObject {
   func sayYes() {
      print("YES!")
   }
   
   func say(what : String) {
      print("\(what)!")
   }
}

let say = SayClass()

// 셀렉터 검사
let sel = #selector(SayClass.sayYes)
if say.responds(to: sel) {
   print("셀렉터 동작 확인")
   say.perform(sel)
}
else {
   print("셀렉터 동작 안함")
}

// 파라미터가 있는 셀렉터 실행
say.perform(#selector(SayClass.say(what:)), with: "Good Morning")

