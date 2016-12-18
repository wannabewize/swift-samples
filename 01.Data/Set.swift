/*
 * Set 타입 예제
 * swift2
 */

var beverage : Set<String> = ["Coke", "Juice", "Milk"]
var intSet : Set<Int> = [1, 2, 3, 4, 5]

// 공백의 셋 객체 생성
var letters = Set<Character>()


beverage.insert("Soda")
beverage.remove("Milk")


print("beverage : ", beverage) // {"Juice", "soda", "Coke"}
print("beverage.count : ", beverage.count) // 3
print("beverage.contains(Coke) : ", beverage.contains("Coke"))
print("beverage.contains(Sprite) : ", beverage.contains("Sprite"))

print("beverage.first : ", beverage.first)


let index = beverage.startIndex
print("beverage[index] : ", beverage[index])
let index1 = beverage.index(after: beverage.startIndex)
print("beverage[index.successor()] : ", beverage[index1])


beverage.insert("Coke")
print("beverage, after insert(Coke) : ", beverage)

let beverageArray = Array(beverage)
print("beverage->Array[0] : ", beverageArray[0])
print("beverage->Array[1] : ", beverageArray[1])


/*
 * Set 타입 예제
 */

var primeNumbers : Set<Int> = [1, 2, 3, 5, 7, 11, 13]
var oddNumbers : Set<Int> = [1, 3, 5, 7, 9]

print("교집합 : ", primeNumbers.intersection(oddNumbers))   // 교집합 [1, 3, 5, 7]
print("합집합 : ", primeNumbers.union(oddNumbers))       // 합집합 [1, 2, 3, 5, 7, 9, 11, 13]
print("여집합 : ", primeNumbers.symmetricDifference(oddNumbers)) // 여집합 [2, 9, 11, 13]
print("차집합 : ", primeNumbers.subtract(oddNumbers))    // 차집합 [2, 11, 13]