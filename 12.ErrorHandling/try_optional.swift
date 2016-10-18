//
// 반환 타입과 try, 옵셔널
//

func addPositiveNumber(_ i : Int, _ j : Int) throws -> Int {
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