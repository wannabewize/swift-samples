// 실수형 타입
let doubleVal = 3.14 // 기본 Double 타입
let floatVal : Float = 36.5

let floatVal2 = 3e10 // 지수형 표기. 300.0


// 타입 크기
print("Double Type size : ", MemoryLayout<Double>.size)
print("Float Type size : ", MemoryLayout<Float>.size)

// 타입 변환
let floatFromDouble : Float = Float(doubleVal)
print("float from double : ", floatFromDouble, type(of : floatFromDouble) )

let doubleFromString = Double("1234")
print("double from string : ", doubleFromString)

// 에러 : 서로 다른 타입 간 연산
// error: binary operator '+' cannot be applied to operands of type 'Float' and 'Double'
// var ret = floatVal + doubleVal

print("Float size   : ", MemoryLayout<Float>.size)
print("Double size   : ", MemoryLayout<Double>.size)