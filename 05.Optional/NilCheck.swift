var optionalVar : Int? = nil

// 아래의 방법으로 nil 검사는 불가능하다.
//if optionalVar {
//    print("유효한 값이다.")
//}

if optionalVar == nil {
    print("nil 이다")
}


optionalVar = 99
if optionalVar != nil {
    print("유효한 값이다")
}
