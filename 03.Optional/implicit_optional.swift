var optionalInt : Int! = 123

let intVal = optionalInt.successor()
print(intVal) // 124, 옵셔널 타입이 아니다.

optionalInt = nil
// fatal error: unexpectedly found nil while unwrapping an Optional value
// let intVal2 = optionalInt.successor()