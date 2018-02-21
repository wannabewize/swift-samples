import Foundation



// 쓰레드 클래스
class MyThread : Thread {
   var title : String
   init(_ title : String) { self.title = title }
   
   // 멀티 쓰레드로 동작하는 코드
   override func main() {
      for i in 0...10 {
         // NSLog는 Thread Safe 함수
         print("\(title) count \(i)")
      }
   }
}

// 쓰레드 객체 생성
let thread1 = MyThread("Thread1")
thread1.start()

let thread2 = MyThread("Thread2")
thread2.start()

// 애플리케이션 종료 막기
while !( thread1.isFinished && thread2.isFinished ) {
   Thread.sleep(forTimeInterval: 1)
}
