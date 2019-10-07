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

let ret1 = addAll()
print("ret1:", ret1)

let ret2 = addAll(1)
print("ret2:", ret2)

let ret3 = addAll(1, 2, 3)     // 6
print("ret3:", ret3)