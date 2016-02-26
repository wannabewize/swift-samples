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
obj[3] // "3"
obj["77"] // 2



//
// 기존 타입(String)의 extension
//

extension String {
   // 특정 인덱스에 해당하는 문자열
   subscript(index:Int) -> String {
      return self[index..<index]
   }
   
   // 범위 내 문자열
   subscript(range:Range<Int>) -> String {
      let start = startIndex.advancedBy(range.startIndex, limit: endIndex)
      let end = startIndex.advancedBy(range.endIndex, limit: endIndex)
      return self[start...end]
   }
}

let str = "Hello Swift"
str[3] // l
str[6...9]  // Swift

