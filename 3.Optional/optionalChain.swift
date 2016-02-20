var optionalStr : String? = "ABC"


let str = optionalStr?.lowercaseString
str // str은 옵셔널 타입. Optional("abc")
print(str)


optionalStr = nil

let str2 = optionalStr?.lowercaseString
str2 // nil
print(str2)


let array : [String?]? = ["A", nil, "C"]
let str3 = array?[1]?.lowercaseString


optionalStr = "ABC"
let str4 = optionalStr!.lowercaseString
str4 // str은 옵셔널 타입. Optional("abc")
print(str4)

optionalStr = nil
//let str5 = optionalStr!.lowercaseString

