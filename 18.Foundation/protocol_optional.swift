import Foundation

@objc protocol Baking {
   func baking() 			      // 필수 구현 메소드
   optional func makeDough() 	// 선택 구현 메소드
   optional var duration : Int { get }
}

class MyClass : NSObject, Baking {
   func baking() {
      print("빵 굽기")
   }
}

