import Foundation


let nsStr : NSString = "Hello Foundation"

let range : NSRange = nsStr.rangeOfString("ell")
range.location // 1
range.length   // 3

if range.location != NSNotFound {
   print("문자열 검색 \(range)")
}
else {
   print("못찾음")
}

// 옵션을 이용해서 대소문자 구별 없이 찾기
let range2 = nsStr.rangeOfString("fo", options: NSStringCompareOptions.CaseInsensitiveSearch)
print(range2)


let swiftStr = "Hello Swift"
let range3 : Range<String.Index>? = swiftStr.rangeOfString("sw")
range3 // nil
let range4 = swiftStr.rangeOfString("sw", options: NSStringCompareOptions.CaseInsensitiveSearch)
range4 // 6..<8


//
// Substring
//

let subStr1 = nsStr.substringFromIndex(3)

let index = swiftStr.startIndex.advancedBy(3)
let subStr2 = swiftStr.substringFromIndex(index)


// Appending

let nsStr2 : NSString = " Hello Foundation "

// 공백 문자 제거
let trimStr = nsStr2.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
let appendStr = trimStr.stringByAppendingString("!")

let swiftStr2 = " Hello Swift "
print(swiftStr2)
let trimStr2 = swiftStr2.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
print(trimStr2)
let appendStr2 = trimStr2.stringByAppendingString("!")
appendStr2


//
// 타입 변환
//

let numStr : NSString = "123"
numStr.integerValue // 123

let numStr2 : NSString = "3.14"
numStr2.floatValue

let boolStr : NSString = "1"
boolStr.boolValue // true



//
// 대소문자 변환
//

let lowerStr : NSString = "abcd"
let upperStr = lowerStr.uppercaseString


