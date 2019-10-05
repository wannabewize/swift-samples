/*
* Bool 타입
*/
// Bool
var value = true

// 타입 선언과 초기화 분리
var value2: Bool
value2 = false

// Bool타입 상수
let value3: Bool = true

// 문자열 "true", "false" 에서 타입 변환 (옵셔널)
let value4 = Bool("true")
print("Bool(\"true\") : ", value4!)

// 문자열에서 변환 실패 - nil. (옵셔널)
let value5 = Bool("YES")
print("Bool(\"YES\") :", value5)

// 에러 = Bool 타입에 정수값 대입
// error: cannot convert value of type 'Int' to specified type 'Bool'
// var value6 : Bool = 1
