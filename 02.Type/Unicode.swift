/*
* 유니코드와 문자 변환
*/

let ch : Character = "a"

let scalar : Unicode.Scalar = ch.unicodeScalars.first!
print("a unicode.scalar.value : " scalar.value) // 97

let ch2 : Character = "\u{61}" // 10진수 97
print("61 : ",ch2)

// Unicode 코드값에서 문자 얻기
let heartScalar = Unicode.Scalar(0x2665)!
let heartCharacter = Character(heartScalar)
print("Unicode.Scalar(0x2665) ", heartCharacter) // ♥