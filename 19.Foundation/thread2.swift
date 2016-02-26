import Foundation

// 쓰레드 클래스
class MyOperation : NSOperation {
   // 멀티 쓰레드로 동작하는 코드
   override func main() {
      for var i = 0 ; i < 10 ; i++ {
         // NSLog는 thread Safe
         NSLog("\(name!) count \(i)")
      }
   }
}


// 큐 생성, 동시에 동작하는 쓰레드 개수 설정
let queue = NSOperationQueue()
queue.maxConcurrentOperationCount = 2

// 오퍼레이션 객체 생성, 큐에 추가
var operation1 = MyOperation()
operation1.name = "Operation1"
queue.addOperation(operation1)

var operation2 = MyOperation()
operation2.name = "Operation2"
queue.addOperation(operation2)

var operation3 = MyOperation()
operation3.name = "Operation3"
queue.addOperation(operation3)

queue.addOperationWithBlock { () -> Void in
   for var i = 0 ; i < 10 ; i++ {
      NSLog("클로저 기반의 쓰레드  \(i)")
   }
}

queue.waitUntilAllOperationsAreFinished()
