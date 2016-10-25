/*
 * 프로토콜 내 선택 구현
 */

import Foundation

@objc protocol Baking {
   func baking() 			      // 필수 구현 메소드
   @objc optional func makeDough() 	// 선택 구현 메소드
   @objc optional var duration : Int { get }
}

class MyClass : NSObject, Baking {
   func baking() {
      print("빵 굽기")
   }
   
   // makeDough 구현 안함
   
   // duration 구현 안함
}
