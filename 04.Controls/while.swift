let count = 3

var i = 0
while i < count {
   print("i = \(i)")
   i += 1 // i++ 은 deprecated
}

// Do-While 대신
var j = 0
repeat {
   print("j = \(j)")
   j += 1 // j++ 은 deprecated
   if j > count {
      break			// break 로 반복 작업 끝내기
   }
} while true
