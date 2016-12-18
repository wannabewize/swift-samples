//
// 기존 타입 확장
//

import Foundation

extension String {
   static func randomNum() -> String {
      return String(arc4random())
   }
}

let randomStr = String.randomNum()
print("Random NumStr1 : ", randomStr)
print("Random NumStr2 : ", String.randomNum())
