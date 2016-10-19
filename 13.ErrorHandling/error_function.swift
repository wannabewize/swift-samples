/*
 * 에러 발생 가능한 함수
 */

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

// throws 함수 실행하기. try
try inputPositive(1)

// 에러 발생 - 비정상 종료
//try inputPositive(0)


// throws 함수의 에러 처리
do {
   try inputPositive(-1)
} catch let error {
   print("에러 발생. 에러 정보 얻기 : \(error)")
}


//
// 반환 타입이 있는 함수
//

func incresePositive(num : Int) throws -> Int {
   guard num > 0 else {
      throw CustomError.YourFault
   }
   return num + 1
}

do {
   let ret = try incresePositive(num: 1)
}
catch let error {
   print("Error 발생", error)
}

let ret1 = try? incresePositive(num: 0) // 옵셔널, nil
print("try? 호출. 에러 발생 : ",ret1)


let ret2 = try? incresePositive(num: 1)
print("try? 호출. 에러 발생 안함 : ",ret2)

let ret3 = try! incresePositive(num: 1) // Non-optional Type
print("try! 호출. 에러 발생 안함 : ", ret3)

if let ret4 = try? incresePositive(num: 0) {
   print("옵셔널 바인딩과 try.")
}
else {
   print("옵셔널 바인딩 - 에러 발생")
}