import Foundation

// 가변 길이 파라미터
func addAll(values : Int...) -> Int {
   if values.count == 0 {
      return 0
   }
   else {
      var result = 0
      for v in values {
         result += v
      }
      return result
   }
}

addAll(1, 2, 3) 	// 6


// 파라미터 변수
func countTo(var value : Int) -> Int {
   var result = 0
   while value > 0 {
      result += value
      value--	// 파라미터 변수 접근
   }
   return result
}

var count = 10
countTo(count)	// 55
count			// 10. 변경되지 않는다.

// inout 으로 선언한 파라미터. 두 번째 파라미터에 외부 파라미터 이름 생략
func swapTwoValue(inout var1 : Int, inout _ var2 : Int) {
   let temp = var1
   var1 = var2
   var2 = temp
}

var value1 = 1
var value2 = 2

swapTwoValue(&value1, &value2)

value1	// 2
value2	// 1
