/*
 * 강제 언래핑
 */

var optionalVal: Int? = 1
let unwrappedVal: Int = optionalVal!
print(unwrappedVal + 1)

optionalVal = nil
// nil인 상황에서 강제 언래핑 - 런타임 에러 발생
//let unwrappedVal2 = optionalVal!

let intVal1: Int? = Int("1") // Int?
print(intVal1)

let intVal2: Int = Int("1")! // Int 타입
print(intVal2)

let intVal3 = Int("A") // nil
print(intVal3)
//let intVal4 = Int("A")! // Error

let dictionary = ["one":1, "two":2]
let two: Int = dictionary["two"]! // non-optional Int 타입
print("two in Dictionary : ", two)

//let three = dictionary["three"]! // Error
