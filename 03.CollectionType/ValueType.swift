//
// 밸류 타입. 배열, 딕셔너리, 셋은 모두 밸류 타입
//

var array1 : [Int] = [1, 2, 3]

// 새로운 변수/상수에 대입하면 복사된다.
var array2 = array1

if array1 == array2 {
   print("같은 값의 원소 배열")
}

// 배열 중 하나만 변경
array1.append(4)


// 서로 값이 다르다.
print("array1 : ", array1) // [1, 2, 3, 4]
print("array2 : ", array2) // [1, 2, 3]