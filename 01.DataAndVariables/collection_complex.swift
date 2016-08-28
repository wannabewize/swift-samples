/*
 * 콜렉션을 사용한 복합 구조
 */


// 2차원 배열
let twoDimensions1 = [["a", "b"], ["c", "d", "e"], ["f"]]
let twoDimensions2 : Array< Array<Int> > = [[1, 2], [3, 4, 5], [6, 7]]


print(twoDimensions1[1])
// 2번째 원소 배열의 1번째 원소
print(twoDimensions2[2][1])


// 배열과 딕셔너리
let evenNums = [2, 4, 6]
let oddNums = [1, 3, 5, 7]
let primeNums = [1, 2, 3, 5]

let dic = ["even" : evenNums, "odd" : evenNums, "prime":primeNums]

// 강제 언래핑 - 옵셔널 참조
print(dic["odd"]![1])

