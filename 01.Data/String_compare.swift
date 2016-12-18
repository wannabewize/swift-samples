/*
 * 문자열 비교
 */

let str = "Hello Swift"
if str == "Hello Swift" {
   print("같은 문자열")
}

print("hasPrefix(Hello) : ",str.hasPrefix("Hello"))
print("hasSuffix(ft) : ", str.hasSuffix("ft"))

// 크기 비교
let str1 = "H"
let str2 = "h"

print(str1 < str2)


//
// 파운데이션(Foundation) Framework 로딩
import Foundation

// compare를 이용한 비교. 파운데이션 프레임워크가 제공

let numStr1 = "1"
let numStr2 = "09"

let ret1 : ComparisonResult = numStr1.compare(numStr2) // orderedDescending
print(ret1 == .orderedDescending)

let ret2 = numStr1.compare(numStr2, options: .numeric, range: nil, locale: nil) // orderedAscending
print(ret2 == .orderedAscending)

let ret3 = "hello".compare("HELLO", options: .caseInsensitive, range: nil, locale: nil) // orderedSame
print(ret3 == .orderedSame)
