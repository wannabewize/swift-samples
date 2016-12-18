// 배열
let intArray : [Int] = [1, 2, 3, 4, 5]
let strArray = ["A", "B", "C"]
let floatArray = Array<Float>([1.1, 2.2, 3.3])

// 빈 배열 생성
var emptyArray = [Int]()
var emptyArray2 = Array<Double>()
var emtpyArray3 : [String] = []

print("intArray : ",intArray)
// 원소 갯수
print("intArray : count : ", intArray.count)
print("emptyArray isEmpty : ",emptyArray.count)
// 빈 배열 확인
print("intArray isEmpty : ",intArray.isEmpty)
print("emptyArray isEmpty : ",emptyArray.isEmpty)

// 원소 접근
let element1 = intArray[0] // 1
let element2 = floatArray[1] // 2.2

// 원소 접근 에러 - fatal error: Index out of range
// let element3 = strArray[3]


/*
 * Array 수정
 */

// 배열 수정은 var로 선언해야 가능
var editableArray : [Int] = [1, 2, 3]


// 원소를 배열 끝에 추가
editableArray.append(5) // [1, 2, 3, 5]
// 원소를 배열 중간에 추가
editableArray.insert(4, at: 3) // [1, 2, 3, 4, 5]

// 배열 덧붙이기
editableArray += [6, 7] // [1, 2, 3, 4, 5, 6, 7]

editableArray.removeLast() // 7
print("After removeLast : ",editableArray) // [1, 2, 3, 4, 5, 6]

// index 2 원소 지우기
editableArray.remove(at:2) // 3
print("After removeAtIndex(2) : ", editableArray) // [1, 2, 4, 5, 6]

print("intArray : ", editableArray) // [1, 2, 4, 5, 6]
print("intArray[3] : ", editableArray[3]) // 5
editableArray[2] = 3
print("intArray : ", editableArray) // [1, 2, 3, 5, 6]

editableArray[3..<5] = [4, 5, 6]
print("After [3..<5] = = [4, 5, 6] : ", intArray) // [1, 2, 3, 4, 5, 6]