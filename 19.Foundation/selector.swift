import Foundation


class MyClass : NSObject {
   func greeting() {
      print("Hello")
   }
     
   func justDoIt() {
      // Instance 생략하기. 혹은 self 사용
      let innerSel = #selector(greeting)
      print(innerSel)
   }    
}

let obj = MyClass()
let sel = #selector(obj.greeting)
print(sel)

obj.justDoIt()

/*
func greeting(person : String) {
}

Selector("greeting:")


func greeting(person : String, with emotion : String) {
}

func greeting(person : String, emotion : String) {
}

Selector("greeting:with:")
// 내부 파라미터 이름을 외부 파라미터 이름으로 사용
Selector("greeting:emotion:")

class MyClass : NSObject {
   func sayYes() {
      print("YES!")
   }
}

var obj = MyClass()

// 별도의 셀렉터 객체로
let selector1 = Selector("sayYes")
obj.respondsToSelector(selector1)

// Selector 구조체 생성을 생략하고 메소드 식별 문자열로 사용 가능
obj.respondsToSelector("sayNo")


class MyClass2 : NSObject {
   // NSObject의 init 메소드 재정의
   override init() {
   }
   
   init(who : String) {
   }
   
   init(who : String, emotion : String) {
   }
}


var obj2 = MyClass2()

obj2.respondsToSelector("init:") // false
obj2.respondsToSelector("initWithWho:")
obj2.respondsToSelector("initWithWho:emotion:")

*/