/*
 *  복합 구조
 */

// 2차원 배열
var twoDimensionArray = [["a", "b"], ["c", "d", "e"], ["f"]]
print(twoDimensionArray[1][1])


// 배열과 딕셔너리 혼합

let evenNums = [2, 4, 6]
let oddNums = [1, 3, 5, 7]
let dic = ["even" : evenNums, "odd" : evenNums]
print(dic["odd"]![1])