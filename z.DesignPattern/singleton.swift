/*
 * 싱글톤 패턴
 */

class MyClass {
   static let sharedInstance = MyClass()
   
   // Initializer로 객체 생성 막기
   private init() {
      
   }
}


let obj1 = MyClass.sharedInstance
let obj2 = MyClass.sharedInstance
print("obj === obj2", obj1 === obj2) // true


// 싱글톤 방식으로만 객체 생성/얻기
//let obj3 = MyClass()
