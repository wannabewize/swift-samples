/*
 * Array 예제
 * swift3
 */

var intArray : [Int] = [1, 2, 3]
// 원소를 배열 끝에 추가
intArray.append(5) // [1, 2, 3, 5]
// 원소를 배열 중간에 추가
intArray.insert(4, at: 3) // [1, 2, 3, 4, 5]

// 배열 덧붙이기
intArray += [6, 7] // [1, 2, 3, 4, 5, 6, 7]

intArray.removeLast() // 7
print("After removeLast : ",intArray) // [1, 2, 3, 4, 5, 6]

// index 2 원소 지우기
intArray.remove(at:2) // 3
print("After removeAtIndex(2) : ", intArray) // [1, 2, 4, 5, 6]

print("intArray : ", intArray) // [1, 2, 4, 5, 6]
print("intArray[3] : ", intArray[3]) // 5
intArray[2] = 3
print("intArray : ", intArray) // [1, 2, 3, 5, 6]

intArray[3..<5] = [4, 5, 6]
print("After [3..<5] = = [4, 5, 6] : ", intArray) // [1, 2, 3, 4, 5, 6]