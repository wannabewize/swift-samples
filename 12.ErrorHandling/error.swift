enum CustomError : Error {
   case MyFault
   case YourFault
}

func inputPositive(_ val : Int) throws {
   guard val > 0 else {
      throw CustomError.YourFault
   }
   
   print("정상 수행")
}

// throws 함수 실행하기 : 에러 처리는 안됨
try inputPositive(1)
// try inputPositive(0)


// throws 함수의 에러 처리
do {
   try inputPositive(0)
} catch {
   print("에러 발생. 크래쉬 안됨")
}

do {
   try inputPositive(0)
} catch let error {
   print("에러 발생. 에러 정보 얻기 : \(error)")
}

do {
   try inputPositive(0)
} catch CustomError.MyFault {
   print("에러 발생 - 에러 타입 : 내 탓")
} catch CustomError.YourFault {
   print("에러 발생 - 에러 타입 : 네 탓")
}


do {
   try inputPositive(0)
} catch let error where error is CustomError {
   switch error as! CustomError {
   case .MyFault:
      print("내 실수")
   case .YourFault:
      print("네 실수")
   }
}

func dangerousFunction() throws {
   throw CustomError.YourFault
}


/**
 * 구조체를 사용한 에러
 */

// 구조체와 클래스를 사용한 에러 정의
struct CustomErrorStruct : Error {
   var msg : String
}

class CustomErrorClass : Error {
   
}

func dangerousFunction2() throws {
   defer {
      print("동작 마무리")
   }
   throw CustomErrorStruct(msg: "에러 발생!")
}

do {
   try dangerousFunction2()
}
catch let error where error is CustomErrorStruct {
   let errorInfo = error as! CustomErrorStruct
   print("에러 메세지 : \(errorInfo.msg)")
}
catch let error where error is CustomErrorClass {
   print("CustomErrorClass 에러")
}
catch let error {
   print("그외 에러")
}


// 예외가 발생하는 클로저를 파라미터로 하는 경우
func dangerousArgument(_ argFunc : () throws -> () ) {
   do {
      try argFunc()
   }
   catch let error {
      print("Error : ", error)
   }
}
dangerousArgument(dangerousFunction)


// 예외가 발생할 수 있는 클로저를 반환 타입으로 하는 경우
func dangerousReturnFunc() -> () throws -> ()  {
   return dangerousFunction
}