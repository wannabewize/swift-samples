/*
* 델리게이트 패턴 구현
*/
import Foundation

protocol ActionDelegate {
    func handleDone()
}

class Action {
    var delegate : ActionDelegate!
    
    func actionDone() {
        // 델리게이트에게 위임 처리
        delegate.handleDone()
    }
}

class MyClass : ActionDelegate {
    func handleDone() {
        print("완료 동작 위임 완료!")
    }
}


let action = Action()
let obj = MyClass()
action.delegate = obj

// 액션에서 발생한 동작은 델리게이트에게 위임해서 처리된다.
action.actionDone()