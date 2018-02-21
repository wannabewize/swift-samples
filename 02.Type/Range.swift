/*
* 범위 타입
*/

let range1 = 1...10
print("1...10 count :", range1.count)
print("1...10 contains 3 :", range1.contains(3))
print("1...10 lowerBound :", range1.lowerBound)
print("1...10 upperBound :", range1.upperBound)

// Range 타입 선언
let range2 : Range<Int> = 1..<3
print("Range :",range2)

let range3 : ClosedRange<Int> = 1...4
print("ClosedRange :",range2)

let range4 : CountableRange<Int> = 1..<5
print("CountableRange : ",range4);

let emtpyRange = 1...1
print("is Empty : ", emtpyRange.isEmpty)



// 문자 범위 리터럴
let stringRange : ClosedRange<String> = "a"..."f"
print(stringRange)

// 바운드
print("numeric lower bound:",closedRange.lowerBound, "numeric upper bound:",closedRange.upperBound)
print("string lower bound:", stringRange.lowerBound, "string upper bound:", stringRange.upperBound)


// 범위 포함 여부
print("3 contains:", closedRange.contains(3))
print("11 contains:", closedRange.contains(11))

// 타입 에러 - Int 타입의 값으로만 가능
// print("1.5 contains:", closedRange.contains(1.5))
// Double 타입은 비교 가능
print("1.5 contains:", doubleRange.contains(1.5))