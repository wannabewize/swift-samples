var beverage : Set<String> = ["Coke", "Juice", "Milk"]
var intSet : Set<Int> = [1, 2, 3, 4, 5]

// 공백의 셋 객체 생성
var letters = Set<Character>()


beverage.insert("Soda")
beverage.remove("Milk")


beverage // {"Juice", "soda", "Coke"}
beverage.count // 3
beverage.contains("Coke")
beverage.contains("Sprite")

beverage.first


let index = beverage.startIndex
beverage[index]
beverage[index.successor()]

beverage
beverage.insert("Coke")

let beverageArray = Array(beverage)
beverageArray[0]
beverageArray[1]
