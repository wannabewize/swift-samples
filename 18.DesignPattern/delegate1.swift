import Foundation

protocol ActionDelegate {
    func handleDone()
}

class Action {
    var delegate : ActionDelegate!
    
    func actionDone() {
        if delegate != nil {
            delegate.handleDone()
        }
    }
}


class MyClass : ActionDelegate {
    func handleDone() {
        print("동작 완료!")
    }
}


let action = Action()
let obj = MyClass()
action.delegate = obj

action.actionDone()