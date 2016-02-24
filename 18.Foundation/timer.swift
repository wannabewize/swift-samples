import Foundation


class Alarm : NSObject {
   func ring(timer : NSTimer) {
      print("Wake UP!")
   }
}

let obj = Alarm()
var timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: obj, selector: "ring:", userInfo: nil, repeats: true)

// 커맨드 라인툴의 환경상 바로 동작
timer.fire()
