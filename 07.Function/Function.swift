import Foundation

// 함수 정의
func greeting() {
   print("Hello Swift")
}

// 함수 실행
greeting()

// Void, () 반환타입. 생략 가능
func greeting2() -> Void {
   print("Hello Swift!")
}
greeting2()


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
   // 난수값 생성 함수 : arc4random. Foundation 프레임워크 필요
   let r1 = Int(arc4random() % 10)
   let r2 = Int(arc4random() % 10)
   let r3 = Int(arc4random() % 10)
   
   return (r1, r2, r3)
}

var nums = random3()
print("Random Numbers2 : \(nums.0), \(nums.1), \(nums.2)")

var (num1, num2, num3) = random3()
print("Random Numbers : \(num1), \(num2), \(num3)")
