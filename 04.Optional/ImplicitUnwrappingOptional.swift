//
// 암시적 언래핑 옵셔널 타입(IUO, Implicit Unwrapping Optional)
//

var iuoVal : Int! = 123

// nil로 초기화된다.
var iuoStr : String!
if iuoStr == nil {
    print("IUO는 nil로 초기화")
}

let advVal = iuoVal.advanced(by: 4) // !나 ? 기호 없이 사용
print(advVal) // 127, 옵셔널 타입이 아니다.

// IUO 타입은 nil 대입 가능
iuoVal = nil
// fatal error: unexpectedly found nil while unwrapping an Optional value
// let advVal2 = iuoVal.advanced(by: 1) // Error


// 배열과 IUO
let iuoArray : [String]! = ["1", "2", "3"]
let item = iuoArray[1] // String 타입. !나 ? 기호 없이 배열의 원소 접근