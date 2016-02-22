var str = "Hello"
// String 추가. collections
str.insertContentsOf("Swift".characters, at: str.endIndex) // "HelloSwift"
print(str)

// Character 추가
str.insert("!", atIndex: str.endIndex) // "HelloSwift!"
print(str)

// 특정 위치에 Character 추가
let index = str.startIndex.advancedBy(5)
str.insert(" ", atIndex: index) // "Hello Swift!"


// 6번째 이후 문자열 얻기
let str1 = str.substringFromIndex(str.startIndex.advancedBy(6)) // "Swift!"
print(str1)

// 범위를 이용한 부분 문자열 얻기
let range = str.startIndex..<str.startIndex.advancedBy(5)
let str2 = str.substringWithRange(range) // "Hello"
print(str2)

// 특정 인덱스의 문자 삭제
str.removeAtIndex(str.endIndex.predecessor())
print(str)

// 특정 범위 내 문자 삭제
let range2 = str.startIndex.advancedBy(5)...str.endIndex.predecessor()
str.removeRange(range2)
print(str)