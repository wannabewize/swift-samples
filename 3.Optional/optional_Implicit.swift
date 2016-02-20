var optionalInt : Int! = 123

let intVal = optionalInt.successor()
intVal // 124, 옵셔널 타입이 아니다.

optionalInt = nil
//let intVal2 = optionalInt.successor()