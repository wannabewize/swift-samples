class Counter {
   var count = 0
   
   func increment() {
      count+=1
   }
   
   func increment(amount : Int) {
      count += amount
   }
   
   func increment(amount: Int, times : Int) {
      count += amount * times
   }
   
   func setCount(count : Int) {
      self.count = count		// self를 이용해서 프로퍼티 접근
   }
   
   func reset() {
      count = 0
   }
}

// 객체 생성
let counter = Counter()

// 파리미터가 없는 메소드 호출
counter.increment()
print(counter.count) // 1

// 파라미터가 1개인 메소드 호출
counter.increment(amount: 5)
print(counter.count) // 5

// 파라미터가 2개인 메소드 호출
counter.increment(amount:3, times: 5)
print(counter.count) // 21