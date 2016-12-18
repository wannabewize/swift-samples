/*
 * 첨자 표기(Subscript)
 */

class MyClass {
   // 숫자 인덱스를 문자로
   subscript (index : Int) -> String {
      return String(index)
   }
   
   // 문자 인덱스는 문자열의 길이
   subscript ( str : String ) -> Int {
      return str.characters.count
   }
}

var obj = MyClass()
print("커스텀 타입에 첨자 표기[3] : ", obj[3]) // "3"
print("커스텀 타입에 첨자 표기[\"77\"] : ", obj["77"]) // 2

//
// 기존 타입(String)의 extension
//

extension String {
   // 범위 내 문자열.
   subscript(range:CountableRange<Int>) -> String? {
      guard let start = self.index(startIndex, offsetBy: range.startIndex, limitedBy : endIndex),
         let end = self.index(startIndex, offsetBy: range.endIndex, limitedBy: endIndex) else {
            return nil
      }
      return self[start..<end]
   }

   // 특정 인덱스에 해당하는 문자열
   subscript(index:Int) -> String? {
      return self[index..<index]
   }
}

let str = "Hello Swift"
print("str[3] : ",str[3]) // l
print("str[6..<11] : ", str[6..<11])  // Swift

