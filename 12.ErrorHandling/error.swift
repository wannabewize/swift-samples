/*
 * 에러 정의와 발생 시키기
 */

enum CustomError : Error {
   case MyFault
   case YourFault
}

do {
   throw CustomError.MyFault
}
catch {
   print("에러 발생")
}

do {
   throw CustomError.YourFault
}
catch let error {
   print("Error :", error)
}

do {
   throw CustomError.YourFault
}
catch CustomError.MyFault {
   print("내탓")
}
catch CustomError.YourFault {
   print("남탓")
}


struct CustomErrorStruct : Error {
   var msg : String!
}

// 클래스로 에러 정의
class CustomErrorClass : Error {
}


do {
   let error = CustomErrorStruct(msg:"Oooops!")
   throw error
}
catch let error {
   print("Error occure")
}

do {
   let error = CustomErrorStruct(msg:"Oooops!")
   throw error
}
catch let error where error is CustomErrorStruct {
   print("구조체로 작성한 에러 발생")
}
catch let error where error is CustomErrorClass {
   print("클래스로 작성한 에러 발생")
}
catch let error {
   print("그외 에러 발생", error)
}


