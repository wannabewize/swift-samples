/*
* 범위 타입
*/

let range1 = 1...10

// 타입 선언
let range2 : ClosedRange<Int> = 1...3
print("1...10 count : ", range1.count) // 10
print("1...3 contains 3 : ", range2.contains(3)) // true

let emtpyRange : ClosedRange<Int> = 1...1
print("is Empty : ", emtpyRange.isEmpty)

let range3 = 1..<10
let range4 : CountableRange<Int> = 1..<4

print("1..<10 count : ", range3.count) // 9
print("1..<4 contains 10 : ", range4.contains(4))