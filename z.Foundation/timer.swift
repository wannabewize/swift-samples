import Foundation


class Alarm : NSObject {
   func ring(timer : Timer) {
      print("Wake UP!")
   }
}

let obj = Alarm()
var timer = Timer.scheduledTimer(timeInterval: 0.5, target: obj, selector: #selector(Alarm.ring(timer:)), userInfo: nil, repeats: true)

// 커맨드 라인툴의 환경상 바로 동작
timer.fire()

// macOS 10.12
//Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
//   print("클로저를 이용한 타이머")
//}
