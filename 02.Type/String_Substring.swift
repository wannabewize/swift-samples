/*
 * 부분 문자열
 * Swift의 문자열(String)에서 문자 위치는 String.Index 타입을 사용한다.
 */
let str = "Hello Swift"

// 문자열의 인덱스. String.Index 타입
let startIndex: String.Index = str.startIndex

// 문자열 인덱스를 이용해서 해당 문자(Character) 얻기
let firstCharacter: Character = str[startIndex]

// 에러 : endIndex는 범위를 벗어난다. -1 해서 사용
let endIndex = str.endIndex
//let endCharacter: Character = str[endIndex]

// 인덱스 조절하기 index함수 사용
let lastIndex = str.index(before: endIndex)
let lastCharacter : Character = str[lastIndex]
print("첫번째 문자 \(firstCharacter), 마지막 문자 : \(lastCharacter)")

// 3번째 인덱스, 뒤에서 7번째 인덱스 얻기
let index3 = str.index(str.startIndex, offsetBy: 3)
let index7 = str.index(str.endIndex, offsetBy: -4, limitedBy: str.startIndex)! // 11-4
print("3번째 문자 : \(str[index3]), 뒤에서 4번째 문자 : \(str[index7])")

// 인덱스 범위 벗어나면 에러
//let indexBound = str.index(str.endIndex, offsetBy:1)

/*
 * 부분 문자열은 SubString 타입이다.
 */

// 범위 연산자를 이용한 부분 문자열얻기. 타입은 Substring
let subStr1: Substring = str[startIndex...index3] // "Hell"
print("Hello Swift[0...3]: ", subStr1)

// ...str.endIndex로 사용하면 에러 발생
let subStr2 = str[index7..<str.endIndex] // "wift"
print("Hello Swift[0..<endIndex] : ", subStr2)

let subStr3 = str[index3...]
print("Hello Swift[3...]: ", subStr3)

// Substring과 String 타입 - 타입 변환 필요
let strFromSubstr: String = String(subStr1)

// Error - SubString -> String 자동 타입 변환 안됨
// let strFromSubstr2: String = subStr1

let subStrAppend: Substring = subStr1 + subStr2
