var i = 0
while i < 10 {
   print("i = \(i++)")
}



var j = 0
repeat {
   print("j = \(j++)")
   if j > 10 {
      break			// break 로 반복 작업 끝내기
   }
} while true
