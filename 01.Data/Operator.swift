/*
* Swift의 연산자
*/

// 대입 연산자(Assignment Operator)
var value1 = -10
let (value2, value3) = (1, 2) // tuple

// 단항 연산자(Unary Operator)
value1 = -value1 // 10
print(value1)

value1 = +value1 // -10
print(value1)


// 산술 연산자(Arithmetic Operator) : +, -, *, /

value1 = 10 + 20
value1 = 20 - 10

let strValue1 = "a" + "b" + "c" // "abc"

// 나머지
// 정수형 타입

let reminder1 = 10 % 3 // 1
print(" 10 % 3 :", reminder1)

// 실수형 타입에서 나머지 연산자 사용 불가(truncatingRemainder 함수 사용)
//let reminder2 = 9.9 % 3.0


// 비교 연산자 : ==, !=, >, < >=, <=
// ===, !== (객체 인스턴스 비교)


// 3항 연산자(Ternary Operator)

let ternaryOperatorResult = 1 > 3 ? "A" : "B"
print("Ternary Operator :", ternaryOperatorResult);


// nil 병합 연산자(Nil-Coalescing Operator)
var valueCanBeNil: Int? = nil
let nilCoalesceResult1 = valueCanBeNil ?? 99 // 99
print("nil ?? 99 :", nilCoalesceResult1)

valueCanBeNil = 1
let nilCoalesceResult2 = valueCanBeNil ?? 99 // 1
print("1 ?? 99 :", nilCoalesceResult2)

/*
* ++, -- 연산자는 삭제. +=, -= 연산자 사용
*/

/*
var intValue = 10
intValue++
 */


// 논리 연산자 : !a(not), a && b, a || b