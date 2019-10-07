//
// 옵셔널 체인
//

var optionalStr : String? = "ABC"

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



//
// 옵셔널 체인에 강제 언래핑 사용
//
optionalStr = "ABC"
let str1 = optionalStr!.lowercased() // str1은 논옵셔널 타입.
print(str1)

optionalStr = nil
//let str2 = optionalStr!.lowercased() // Error
