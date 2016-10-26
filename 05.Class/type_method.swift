/**
 * 타입 메소드와 인스턴스 메소드
 */
class MyClass {
   var property = 0
   
   // 타입 메소드
   static func typeMethod() {
      // property = 2 	// 에러. 타입 메소드에서 프로퍼티 접근 불가
      print("Type method works")
   }
   
   func intanceMethod() {
      property = 1 	// 인스턴스 메소드에서 프로퍼티 접근 가능
      print("Instance method works")
   }
}


var obj = MyClass()
obj.intanceMethod()

MyClass.typeMethod()