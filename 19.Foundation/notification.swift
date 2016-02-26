import Foundation


// 알림 센터와 알림 이름
let notiCenter = NSNotificationCenter.defaultCenter()
let NotiName = "CustomNotification"

// 알림 감시용 클래스 생성. NSObject 상속 필요
class MyClass : NSObject {
   // 알림이 발생하면 동작하는 메소드
   func handleNoti(noti : NSNotification) {
      print("알림 발생!")
   }
}

// 알림 센터에 알림에 대한 감시자 객체 등록
let obj = MyClass()
notiCenter.addObserver(obj, selector: Selector("handleNoti:"), name:NotiName, object: nil)

// 알림 발송

notiCenter.postNotificationName(NotiName, object: nil)

// 알림 발송(알림 객체로)
let noti = NSNotification(name:NotiName, object:obj)
notiCenter.postNotification(noti)