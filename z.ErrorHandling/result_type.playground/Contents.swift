// Result : 동작 결과(성공, 실패)
//
// - 동작 성공 : 결과값 타입
// - 동작 실패 : 에러


// 동작 실패 에러 정의
enum TaskError: Error {
    case simpleError
    case withErrorCode(Int)
    case withCodeAndMessage(Int, String)
}


// 성공 결과 타입 : Int
// 동작 성공 결과 생성하기
let successRet1 = Result<Int, TaskError>.success(10)

// 동작 결과에서 성공/실패 판단, 결과값 얻기
switch successRet1 {
case .success(let value):
    print("Success :", value)
default:
    print("Fail")
}

// 동작 실패 결과 생성하기
let failedRet1 = Result<Int, TaskError>.failure(.simpleError)

// 동작 결과 판단하기 - 에러 객체 얻기
switch failedRet1 {
case .success(_):
    print("Success")
case .failure(let error):
    print("Failure", error)
}

let failedRet2 = Result<Int, TaskError>.failure(.withErrorCode(404))

// 동작 결과 판단하기 - 개별 에러 식별하기
switch failedRet2 {
case .success(_):
    print("Success")
case .failure(.simpleError):
    print("Failure : simple Error")
case .failure(.withErrorCode(let code)):
    print("Failure with code :", code)
case .failure(.withCodeAndMessage(let code, let msg)):
    print("Failure with code and message", code, msg)
}


//
// 함수에 Result 적용하기
//

// 양수 입력 :성공
// 0, 음수 입력 : 실패
func inputPositive(_ value: Int) -> Result<Int, TaskError> {
    if value > 0 {
        return .success(value)
    }
    else if value == 0 {
        return .failure(.withErrorCode(0))
    }
    else {
        return .failure(.withCodeAndMessage(400, "Negative Number"))
    }
}

switch inputPositive(10) {
case .success(let value):
    print("inputPositive success :", value)
default:
    print("inputPositive failure")
}


switch inputPositive(-10) {
case .success(let value):
    print("inputPositive success :", value)
case .failure(.simpleError):
    print("inputPositive failure")
case .failure(.withErrorCode(let code)):
    print("inputPositive error code :", code)
case .failure(.withCodeAndMessage(let code, let msg)):
    print("inputPositive error code :", code, "message :", msg)
}

