import Foundation


let nsStr : NSString = "Hello Foundation"

let range : NSRange = nsStr.range(of: "ell")
print("location : ", range.location) // 1
print("length : ", range.length)   // 3

if range.location != NSNotFound {
   print("문자열 검색 \(range)")
}
else {
   print("못찾음")
}

// 옵션을 이용해서 대소문자 구별 없이 찾기
let range2 = nsStr.range(of: "fo", options: .caseInsensitive)
print("rangeOfString.CaseInsensitiveSearch : ",range2)


let swiftStr = "Hello Swift"

let range3 : Range<String.Index>? = swiftStr.range(of: "sw")
print("range3 : ", range3) // nil
let range4 = swiftStr.range(of:"sw", options: .caseInsensitive)
//range4 // 6..<8
print("Swift String. rangeOfString : ", range4)

//
// Substring
//

let subStr1 = nsStr.substring(from:3)

// 시작 인덱스. String.Index 타입. 0에서 3뒤로.
let index = swiftStr.index(swiftStr.startIndex, offsetBy: 3)
let subStr2 = swiftStr.substring(from:index)

// String.Index의 범위
let range5 : Range<String.Index> = swiftStr.startIndex ..< swiftStr.index(swiftStr.startIndex, offsetBy: 5)
let subStr3 = swiftStr.substring(with: range5) // "Hello"


// Appending

let nsStr2 : NSString = " Hello Foundation "

// 공백 문자 제거
let trimStr = nsStr2.trimmingCharacters(in: CharacterSet.whitespaces)
let appendStr = trimStr.appending("!")

let swiftStr2 = " Hello Swift "
print(swiftStr2)
let trimStr2 = swiftStr2.trimmingCharacters(in: CharacterSet.whitespaces)
print(trimStr2)
let appendStr2 = trimStr2.appending("!")
print(appendStr2)


//
// 타입 변환
//

let numStr : NSString = "123"
print(numStr.integerValue) // 123

let numStr2 : NSString = "3.14"
print(numStr2.floatValue)

let boolStr : NSString = "1"
print(boolStr.boolValue) // true



//
// 대소문자 변환
//

// NSString
let lowerStr : NSString = "abcd"
let upperStr = lowerStr.uppercased

// Swift String
let upperStr2 = "hello".uppercased()



