import Foundation

// 함수 정의
func greeting() {
   print("Hello Swift")
}

// 함수 실행
greeting()



// Bool 반환
func areYouOK() -> Bool {
   return true
}
let ok = areYouOK() // true

// 문자열 반환
func favoriteDrink() -> String {
   return "Coffee"
}
let drink = favoriteDrink() // "Coffee"


func random3() -> (Int, Int, Int) {
   let r1 = Int(arc4random() % 10)
   let r2 = Int(arc4random() % 10)
   let r3 = Int(arc4random() % 10)
   
   return (r1, r2, r3)
}

var nums = random3()
print("Random Numbers2 : \(nums.0), \(nums.1), \(nums.2)")

var (num1, num2, num3) = random3()
print("Random Numbers : \(num1), \(num2), \(num3)")
