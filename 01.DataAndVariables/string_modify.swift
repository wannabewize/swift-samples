/*
 * 문자열 수정(추가, 삭제, 변경)
 */

var str = "Hello"
// String 추가. collections
str.insertContentsOf("Swift".characters, at: str.endIndex) // "HelloSwift"
print(str)

// Character 추가
str.insert("!", atIndex: str.endIndex) // "HelloSwift!"
print(str)

let index : String.Index = str.startIndex.advancedBy(5)
print("String.Index : ", index)

// 특정 위치에 Character 추가
str.insert(" ", atIndex: index) // "Hello Swift!"


let index2 = str.startIndex.advancedBy(6)
// 특정 인덱스의 문자(Character)
print("str[Index] : ", str[index2])
// 특정 벙위의 문자열(String)
let range2 = str.startIndex.advancedBy(1) ..< str.startIndex.advancedBy(5)
print("str[Range] : ", str[range2])

// 특정 인덱스의 문자 삭제
str.removeAtIndex(str.endIndex.predecessor())
print(str)

// 특정 범위 내 문자 삭제
let range3 = str.startIndex.advancedBy(5)...str.endIndex.predecessor()
str.removeRange(range3)
print(str)