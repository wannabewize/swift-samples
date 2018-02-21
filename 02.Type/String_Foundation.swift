// 파운데이션(Foundation) Framework 로딩
import Foundation

// 포맷 문자열 생성 - 파운데이션 프레임워크 제공
let formatted1 = String(format:"%03d", 12)
print("Formatted String(03d) : ", formatted1)

let formatted2 = String(format: "%3.2f", 3.14159)
let formatted3 = String(format: "%3.2e", 3.14159)
print("Formatted String(3.2f) : ", formatted2)
print("Formatted String(3.2e) : ", formatted3)


let formatted4 = String(format: "%@, %@", "Hello", "Swift")
print("formatted String : ", formatted4)