//
//  main.swift
//  CodeSnippet
//
//  Created by Jaehoon Lee on 2016. 12. 21..
//  Copyright © 2016년 vanillastep. All rights reserved.
//

import Foundation

@objc protocol ActionDelegate : class, NSObjectProtocol {
    func handleDone()
    @objc optional func handleCancel() // 선택적으로 구현
}

class Action {
    weak var delegate : ActionDelegate!
    
    func actionDone() {
        if delegate != nil {
            delegate.handleDone()
        }
    }
    func actionCancel() {
        if delegate != nil && delegate.responds(to: #selector(ActionDelegate.handleCancel) ) {
            delegate.handleCancel!()
        }
        else {
            print("델리게이트가 없거나 선택 구현이 없으므로. 기본 동작")
        }
    }
}


class MyClass : NSObject, ActionDelegate {
    func handleDone() {
        print("동작 완료!")
    }
}


let action = Action()
let obj = MyClass()
action.delegate = obj

action.actionDone()
// 취소에 대한 동작 구현이 안된 상태에서는 기본 구현으로 동작
action.actionCancel()