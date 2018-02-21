//
// 배열 생성
//
let intArray = [1, 2, 3, 4, 5]
let strArray : [String] = ["A", "B", "C"]
let floatArray = Array<Float>([1.1, 2.2, 3.3])

// 빈 배열 생성
var emptyArray : [Int] = []
var emptyArray2 = [Double]()
var emtpyArray3 = Array<String>()

print("intArray : ",intArray)
// 원소 갯수
print("intArray : count : ", intArray.count)
print("emptyArray isEmpty : ",emptyArray.count)
// 빈 배열 확인
print("intArray isEmpty : ",intArray.isEmpty)
print("emptyArray isEmpty : ",emptyArray.isEmpty)

//
// 배열 내용 접근
//
let element1 = intArray[0] // 1
let element2 = floatArray[1] // 2.2
let element3 = floatArray.first
let element4 = strArray.last
// 원소 접근 에러 - fatal error: Index out of range
// let element5 = strArray[3]

// 원소 포함 여부
print("intArray contains(3): ", intArray.contains(3))
print("intArray contains(6): ", intArray.contains(6))

/*
 * 배열 수정
 */

// 배열 수정은 var로 선언해야 가능. let으로 선언한 배열은 수정 불가
var editableArray : [Int] = [1, 2, 3]

// 원소를 배열 끝에 추가
editableArray.append(5) // [1, 2, 3, 5]
// 원소를 배열 중간에 추가
editableArray.insert(4, at: 3) // [1, 2, 3, 4, 5]

// + 연산자를 이용해서 배열 덧붙이기
let appendedArray = editableArray + [6] // [1, 2, 3, 4, 5, 6]
print("appendedArray:",appendedArray)
// += 연산자를 이용해서 원래 배열에 덧붙이기
editableArray += [6, 7] // [1, 2, 3, 4, 5, 6, 7]

//
// 삭제하기
//
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

