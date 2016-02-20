// 조건문 작성 방법
var array = [1, 2, 3, -1, 4, 5]

for item in array {   
   // 종료 상황의 조건
   if item < 0 {
      break
   }
   print(item)
}

for item in array {
   // 흐름을 이어가는 조건
   guard item > 0 else {
      break
   }
   print(item)
}

func someFunc() -> Int? {
   return 1
   // return nil
}

func example2() {
   guard let val = someFunc() else {
      print("val은 nil")
      return;
   }
   
   // val 에 접근하기
   print("val은 유요한 값 : \(val)")
}