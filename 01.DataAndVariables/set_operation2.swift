/*
 * Set 타입 예제
 * swift2
 */

var primeNumbers : Set<Int> = [1, 2, 3, 5, 7, 11, 13]
var oddNumbers : Set<Int> = [1, 3, 5, 7, 9]


print("intersect : ", primeNumbers.intersect(oddNumbers))   // 교집합 [1, 3, 5, 7]
print("union : ", primeNumbers.union(oddNumbers))       // 합집합 [1, 2, 3, 5, 7, 9, 11, 13]
print("exclusiveOf : ", primeNumbers.exclusiveOr(oddNumbers)) // 여집합 [2, 9, 11, 13]
print("subtract : ", primeNumbers.subtract(oddNumbers))    // 차집합 [2, 11, 13]