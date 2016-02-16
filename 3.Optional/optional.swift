// 에러
// var var1 : Int = nil

var optionalVar : Int? = nil

var optionalVar2 : Int?
print(optionalVar2)


var normalStr : String = "123"
print("normal Str : ", normalStr.toInt())

var optionalStr : String? = "123"
// var intVal = optionalStr.toInt() // 에러
var intVal2 = optionalStr!.toInt()
print(intVal2)


let optionalCon : String? = "123"
print(optionalCon)

