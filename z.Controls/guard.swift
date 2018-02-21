// 조건문 작성 방법
var array = [1, 2, 3, -1, 4, 5]


// if를 이용한 조건
for item in array {   
   // 종료 상황의 조건
   if item < 0 {      
      break
   }
   print(item)
}

// guard 사용
for item in array {
   // 흐름을 이어가는 조건
   guard item > 0 else {
      print("item의 값이 0보다 크지 않다.")
      break
   }
   print(item)
}

