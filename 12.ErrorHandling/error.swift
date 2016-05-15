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

func dangerousFunction() throws {
   throw CustomError.YourFault
}


/**
* 구조체를 사용한 에러
*/

// 구조체와 클래스를 사용한 에러 정의
struct CustomErrorStruct : ErrorType {
   var msg : String
}

class CustomErrorClass : ErrorType {
   
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



func dangerousArgument( argFunc : () throws -> () ) {
   do {
      try argFunc()
   }
   catch let error {
      print("Error : ", error)
   }
}
dangerousArgument(dangerousFunction)


func dangerousReturnFunc() -> () throws -> ()  {
   return dangerousFunction
}


func doIt() {
   do {
      try dangerousFunction()
   }
   catch let error {
      print("Error : ", error)
   }
}
doIt()


// 에러 전파하기
func doIt2() throws {
   try dangerousFunction()
}

do {
   try doIt2()
}
catch let error {
   print("Error : ", error)
}

// rethrows
func doIt3( argFunc : () throws -> () ) rethrows {
   try argFunc()
}

do {
   try doIt3(dangerousFunction)
}
catch let error {
   print("Error : ", error)
}

//func doIt4( argFunc : () throws -> () ) rethrows {
//   try argFunc()
//   throw CustomError.MyFault
//}

// Optional try



func addPositiveNumber(i : Int, _ j : Int) throws -> Int {
   guard i > 0 && j > 0 else {
      throw CustomError.YourFault
   }
   return i + j
}

let ret1 = try? addPositiveNumber(1, 2)
print(ret1) // Optional Type

let ret2 = try? addPositiveNumber(-1, 2)
print(ret2) // nil

let ret3 = try! addPositiveNumber(3, 4)
print(ret3)