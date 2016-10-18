/*
 * Clean up. try-catch-"final"
 */

enum MyError : Error {
   case error
}

func dangerousFunction(_ fire : Bool) throws {
   defer {
      print("동작 마무리")
   }
   
   if fire {
      throw MyError.error
   }
}

// 예외 발생
try? dangerousFunction(true)

// 예외 발생 안함
try? dangerousFunction(false)