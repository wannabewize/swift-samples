/*
 * 문자 다루기
 */
let a : Character = "a"

// Emoji

let dog : Character = "🐶"
let heart : Character = "♥"

print("dog: \(dog), heart : \(heart)")
//print("\(dog.unicodeScalars.first?.value), \(heart.unicodeScalars.first?.value)")

// Character from unicode. Hex value
let u63 : Character = "\u{63}"    // c
let u2665 : Character = "\u{2665}"  // ♥

print("u{63} : ",u63, " - u{2665} : ", u2665)

// 에러
// let chars : Character = "abc" // String Literal

// 비교
let c : Character = "c"
print("a > c  : ", a > c) // false
print("heart == ♥  : ", heart == "♥") // true
print("🐶 > ♥ : ", dog > heart)


