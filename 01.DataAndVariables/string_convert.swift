// Int 타입과 문자열 변환
let intVal = 1234
let strFromInt = String(intVal)
print("String from Int : \(strFromInt), Type : \(strFromInt.dynamicType)")

let intStr = "1234"
let intValFromStr = Int(intStr)!
print("Int from String : \(intValFromStr), Type : \(intValFromStr.dynamicType)")


// Float 타입과 문자열 변환
let strFromInt2 = String(format: "%05d", intVal)
print("Formatted String from Int : \(strFromInt2)")

let floatVal : Float = 314159.000
let strFromFloat = String(floatVal)
print("String from Float : \(strFromFloat), Type : \(strFromFloat.dynamicType)")

let strFromFloat2 = String(format: "%3.5f", floatVal)
let strFromFlaot3 = String(format: "%3.5e", floatVal)
print("Format String from Float : \(strFromFloat2), \(strFromFlaot3)")

let floatStr = "3.14"
let floatValFromStr = Float(floatStr)!
print("Float Value from String : \(floatValFromStr), Type : \(floatValFromStr.dynamicType)")


// Bool 타입과 문자열 변환
let boolVal = true
let strFromBool = String(boolVal)
print("String from Bool : \(strFromBool)")
