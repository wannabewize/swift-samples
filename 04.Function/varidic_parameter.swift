// 가변 길이 파라미터
func addAll(_ values : Int...) -> Int {
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

addAll()
addAll(1)
addAll(1, 2, 3) 	// 6

