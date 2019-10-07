//
// inout 파라미터
//

// 파라미터는 상수(let)으로 동작한다.
func tryParameterChange(_ arg : Int) {
//   arg = arg + 1 // Error
}

tryParameterChange(10)


// inout 으로 선언한 파라미터.
func swapTwoValue(_ arg1 : inout Int, _ arg2 : inout Int) {
   let temp = arg1
   arg1 = arg2
   arg2 = temp
}

var value1 = 1
var value2 = 2

swapTwoValue(&value1, &value2)

print("value1 :", value1)    // 2
print("value2 :", value2)    // 1
