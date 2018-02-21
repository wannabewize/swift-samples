// 파운데이션(Foundation) Framework 로딩
import Foundation

print("## 포맷 문자열 만들기")

// 포맷 문자열 생성 - 파운데이션 프레임워크 제공
let formatted1 = String(format:"%03d", 12)
print("Formatted String(03d) : ", formatted1)

let formatted2 = String(format: "%3.2f", 3.14159)
let formatted3 = String(format: "%3.2e", 3.14159)
print("Formatted String(3.2f) : ", formatted2)
print("Formatted String(3.2e) : ", formatted3)


let formatted4 = String(format: "%@, %@", "Hello", "Swift")
print("formatted String : ", formatted4)


print("## compare를 이용한 문자열 비교")

// compare를 이용한 비교. 파운데이션 프레임워크가 제공
let numStr1 = "1"
let numStr2 = "09"

let ret1 : ComparisonResult = numStr1.compare(numStr2) // orderedDescending
print(ret1 == .orderedDescending)

let ret2 = numStr1.compare(numStr2, options: .numeric, range: nil, locale: nil) // orderedAscending
print(ret2 == .orderedAscending)

let ret3 = "hello".compare("HELLO", options: .caseInsensitive, range: nil, locale: nil) // orderedSame
print(ret3 == .orderedSame)
