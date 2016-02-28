enum CustomError : ErrorType {
   case MyFault
   case YourFault
}

func inputPositive(val : Int) throws {
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


// 구조체와 클래스를 사용한 에러 정의
struct CustomErrorStruct : ErrorType {
   var msg : String
}

class CustomErrorClass : ErrorType {
   
}

func dangerousFunction() throws {
   defer {
      print("동작 마무리")
   }
   throw CustomErrorStruct(msg: "에러 발생!")
}

do {
   try dangerousFunction()
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


// Optional try
func sayHello() throws {
   throw CustomError.MyFault
}

let ret = try? sayHello()
ret


