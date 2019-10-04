/*
 * 범위(Literal)
 */

// 숫자 범위 리터럴
let closedRange = 1...10
let halfOpenRange = 1..<10
print("closedRange :", closedRange)
print("halfOpenRange :", halfOpenRange)

// 열린 범위
let oneSideRange1 = 1...
let oneSideRange2 = ..<10
print(oneSideRange1)
print(oneSideRange2)

// 실수형 열린 범위
let doubleRange = 1.1...2.2
print(doubleRange)

// 문자 범위 리터럴
let stringRange = "a"..."f"
print(stringRange)
