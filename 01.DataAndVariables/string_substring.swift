/*
 * 문자열과 부분 문자열
 */

let str = "Hello Swift"

let index1 = str.startIndex.advancedBy(1)
// limit를 벗어나지 않는 범위내 index
let index2 = str.startIndex.advancedBy(7, limit: str.endIndex)
print("index1 : ", index1, " index2 : ", index2)

// SubString
let subStr1 = str.substringFromIndex(index1)
let subStr2 = str.substringToIndex(index2)
print("Substring1 : ", subStr1)
print("Substring2 : ", subStr2)

let range = index1..<index2
let subStr3 = str.substringWithRange(range)
print("Substring : ", subStr3)