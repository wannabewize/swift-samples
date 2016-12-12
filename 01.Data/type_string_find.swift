//
// range를 이용한 검색
//

import Foundation

let str = "Hello Swift"

// lo 문자열 찾기
let range1 = str.range(of: "lo")!
let lower = str.distance(from: str.startIndex, to: range1.lowerBound)
let upper = str.distance(from: str.startIndex, to: range1.upperBound)
print("lo range : ", lower, upper)


// sw 문자열 찾기. 찾을 수 없으면 nil 반환
let range2 = str.range(of:"sw")
if range2 == nil {
   print(str + "에서 sw 못찾음")
}

// sw 문자열 대소문자 구분 없이 찾기.
let range3 = str.range(of:"sw", options: .caseInsensitive)
//range3 // 6..<8
if range3 != nil {
   print(str + "에서 대소문자 구분 없이 sw 찾음")
}