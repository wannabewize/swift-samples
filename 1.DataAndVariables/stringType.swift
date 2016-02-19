// Character 타입
let char : Character = "a"

// 유니코드
let char2 : Character = "\u{63}" // c
print("Unicode 63 : ", char2)

let char3 : Character = "\u{2665}" // Black Heart
print("Unicode 2665 : ", char3)

// 기본 타입은 문자열(String)
let val = "H"
print("charVal is Character? : ",val is String)

let str = "Hello, Swift Language"


// interpolation
let str2 = "Swift"
let str3 = "Hello, \(str2)"
let str4 = "1 + 2 = \(1+2)"
print("interpolation : ", str3, str4)


// characters - Character Collection
print(str.characters[3])

var strVal = "cafe"

let acuteAccent: Character = "\u{0301}"
strVal.append(acuteAccent) // café
print(strVal);



// 타입 변환
var numStr = "123"
var numVal = Int(numStr)
print(numVal)

var numStr2 = "3.14"
var doubleVal = Double(numStr2)
print(doubleVal)