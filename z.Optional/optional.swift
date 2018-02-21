/*
 * Optional, nil 예제
 */

// Error
// var i : Int = nil
// Optional Type

var optionalVar : Optional<Int> = nil
var optionalVar2 : Int? = nil
print("nil 대입된 변수 : ",optionalVar, optionalVar2)


// 타입 변환시 발생하는 nil
let intFromStr = Int("a") // Int? 타입
print("int from string : ", intFromStr)

// 딕셔너리 원소 접근
let numbers = ["one":1, "two":2]
let three = numbers["three"] // Int?
print("three from dictionary : ", three)


var optionalStr : String? = "ABC"

// OptionalType 직접 사용은 불가! - 컴파일 에러
//optionalStr.lowercased()

//
// 옵셔널 체인
// 

let str = optionalStr?.lowercased() // str은 옵셔널 타입. Optional("abc")
print(str)


optionalStr = nil
let str2 = optionalStr?.lowercased() // nil
print(str2)


let array : [String]? = ["A", "B", "C"]
let str3 = array?[1].lowercased()
print(str3)


// ?? 연산자
var userSelectedColor : String?
var colorName = userSelectedColor ?? "Red"  // nil 이면 Red를 사용
print(colorName) // "Red"

