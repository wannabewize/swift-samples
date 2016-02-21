class Counter {
   var count = 0
   
   func increment() {
      count++
   }
   
   func incrementBy(amount : Int) {
      count += amount
   }
   
   func incrementBy(amount: Int, numberOfTimes: Int) {
      count += amount * numberOfTimes
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
counter.count // 1

// 파라미터가 1개인 메소드 호출
counter.incrementBy(5)
counter.count // 5

counter.incrementBy(3, numberOfTimes: 5)