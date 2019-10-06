/*
 * 강제 언래핑
 */
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


//
// 옵셔널 체인에 강제 언래핑 사용
//
var optionalStr : String? = "ABC"

let str1 = optionalStr!.lowercased() // str1은 논옵셔널 타입.
print(str1)

optionalStr = nil
//let str2 = optionalStr!.lowercased() // Error


//
// 암시적 언래핑 옵셔널 타입(IUO, Implicit Unwrapping Optional)
//

var iuoVal : Int! = 123

// nil로 초기화된다.
var iuoStr : String!
if iuoStr == nil {
   print("IUO는 nil로 초기화")
}

let advVal = iuoVal.advanced(by: 4) // !나 ? 기호 없이 사용
print(advVal) // 127, 옵셔널 타입이 아니다.

// IUO 타입은 nil 대입 가능
iuoVal = nil
// fatal error: unexpectedly found nil while unwrapping an Optional value
// let advVal2 = iuoVal.advanced(by: 1) // Error


// 배열과 IUO
let iuoArray : [String]! = ["1", "2", "3"]
let item = iuoArray[1] // String 타입. !나 ? 기호 없이 배열의 원소 접근