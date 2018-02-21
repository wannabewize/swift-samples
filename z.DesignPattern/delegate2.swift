/*
* 델리게이트 패턴 구현2
* 선택항목 사용
*/

import Foundation

@objc protocol ActionDelegate : class {
    func handleDone()
    @objc optional func handleCancel() // 선택적 구현 항목
}

class Action {
    weak var delegate : ActionDelegate!
    
    func actionDone() {
        // 델리게이트가 없을 수도 있다.
        if delegate != nil {
            // 델리게이트 객체가 있으면 위임 처리
            delegate.handleDone()
        }
        else {
            print("델리게이트가 없으면 위임하지 않는다. 기본 구현으로 동작")
        }
    }
    
    func actionCancel() {
        if delegate != nil {
            // 옵셔널 항목이므로 옵셔널 타입이다.
            delegate.handleCancel?()
        }
        else {
            print("델리게이트가 없으면 위임하지 않는다. 기본 구현으로 동작")
        }
    }
}

class MyClass : NSObject, ActionDelegate {
    func handleDone() {
        print("완료 동작 위임 완료!")
    }
    
    func handleCancel() {
        print("취소 동작 위임 완료")
    }
}

let action = Action()
let obj = MyClass()
action.delegate = obj

action.actionDone()

// 취소에 대한 동작 구현이 안된 상태에서는 기본 구현으로 동작
action.actionCancel()