/*
* 리터럴(Literal), Numeric Literals
*/

let trueValue = true
let falseValue = false

// 참/거짓 리터럴
print(trueValue)
print(falseValue)

// 정수형 리터럴
let intValue1 = 1
let intValue2 = 2
print(intValue1)
print(intValue2)

// 이진수(binary) - 0b로 시작
// 8진수 - 0o
// 16진수 - 0x

let valueDecimal = 100
let valueBinary = 0b100 // 4
let valueOctal = 0o100 // 64
let valueHexa = 0x100 // 256
// let valueError = 0b210 // Error

print(valueDecimal)
print(valueBinary) // 4
print(valueOctal) // 64
print(valueHexa) // 256

// 실수형(Double, Float)
let valueDouble1 = 1.1
let valueDouble2 = 2.2

// 실수형
print(valueDouble1)
print(valueDouble2)

// e표현
let valueExponential1 = 1.23e3 // 1230
let valueExponential2 = 1.23e-3 // 0.00123
print(valueExponential1) 
print(valueExponential2)

// exp표현. 16진수만. 결과는 Double 타입
let valueExponential3 = 0x2p6 // 2 * 2^6, 128
let valueExponential4 = 0xFp10 // 15 * 2^10, 1024

print(valueExponential3)
print(valueExponential4)
