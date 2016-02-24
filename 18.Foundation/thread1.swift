import Foundation

// 쓰레드 클래스
class MyThread : NSThread {
   // 멀티 쓰레드로 동작하는 코드
   override func main() {
      for var i = 0 ; i < 10 ; i++ {
         // NSLog는 Thread Safe 함수
         NSLog("\(name) count \(i)")
      }
   }
}

// 쓰레드 객체 생성
var thread1 = MyThread()
thread1.name = "Thread1"
thread1.start()

var thread2 = MyThread()
thread2.name = "Thread2"
thread2.start()

// 애플리케이션 종료 막기
while !( thread1.finished && thread2.finished ) {
   NSThread.sleepForTimeInterval(1)
}
