/*
 * 에러 전파
 */

enum CustomError : Error {
   case MyFault
   case YourFault
}

func dangerousFunction() throws {
   throw CustomError.YourFault
}

// 예외 전파 안하기
func doIt() {
   do {
      try dangerousFunction()
   }
   catch let error {
      print("예외 전파 안하고 함수 내부에서 처리", error)
   }
}
doIt()


// 함수 내 발생한 에러 전파하기
func doIt2() throws {
   try dangerousFunction()
}

do {
   try doIt2()
}
catch let error {
   print("함수에서 발생한 에러 전파",error)
}