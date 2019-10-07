// For Loop
let limit = 3

// 범위를 사용하는 For Loop. C 스타일 for 문은 삭제
for i in 0..<limit {
    print(i)
}

// 배열 순회
let array = [1, 2, 3]

for item in array {
    print(item)
}


var array2 = [10, 20, 30]
for item in array2 {
    print(item)
    
    // 배열 순회 중 변경 시도.
    if item < 30 {
        array2.append(item*2)
    }
}
// 배열 순회 중 변경한 내용 - 순회 끝나고 출력
print("Array2 : \(array2)")


// 딕셔너리 순회
var dic = ["일":"one", "이":"two", "삼":"three"]

for (kor, eng) in dic {
    print("Key : \(kor) Value : \(eng)")
}


// 문자열 - 문자 순회
var str = "Hello Swift"

for ch in str {
    print(ch)
}
