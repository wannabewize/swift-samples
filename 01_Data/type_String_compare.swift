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


/*
* Foundation Framework
*/

import Foundation
// 비교(compare). Foundation

let numStr1 = "1"
let numStr2 = "09"

let ret1 : ComparisonResult = numStr1.compare(numStr2) // orderedDescending
print(ret1 == .orderedDescending)

let ret2 = numStr1.compare(numStr2, options: .numeric, range: nil, locale: nil) // orderedAscending
print(ret2 == .orderedAscending)

let ret3 = "hello".compare("HELLO", options: .caseInsensitive, range: nil, locale: nil) // orderedSame
print(ret3 == .orderedSame)