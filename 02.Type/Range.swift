/*
* 범위 타입
*/

let range1 = 1...10
print("1...10 count :", range1.count)

// 범위 포함 여부
print("1...10 contains 3 :", range1.contains(3))
print("1...10 contains 99 :", range1.contains(99))

// 바운드
print("1...10 lowerBound :", range1.lowerBound)
print("1...10 upperBound :", range1.upperBound)

// Range 타입 선언
let range2 : Range<Int> = 1..<3
print("Range :",range2)

let range3 : ClosedRange<Int> = 1...4
print("ClosedRange :",range2)

let range4 : CountableRange<Int> = 1..<5
print("CountableRange : ",range4)

let range5 : PartialRangeThrough<UInt> = ...10
print("PartialRangeThrough :", range5)

let emtpyRange = 1...1
print("is Empty : ", emtpyRange.isEmpty)

// 문자 범위 리터럴
let stringRange : ClosedRange<String> = "a"..."f"
print(stringRange)
