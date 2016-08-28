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
print("beverage[index.successor()] : ", beverage[index.successor()])


beverage.insert("Coke")
print("beverage, after insert(Coke) : ", beverage)

let beverageArray = Array(beverage)
print("beverage->Array[0] : ", beverageArray[0])
print("beverage->Array[1] : ", beverageArray[1])
