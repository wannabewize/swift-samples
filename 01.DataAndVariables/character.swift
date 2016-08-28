/*
* 문자 다루기
*/
let a : Character = "a"
let dog : Character = "🐶"        
let heart : Character = "♥"
// UnicodeScalar
let c : Character = "\u{63}"    // c
let heart2 : Character = "\u{2665}"  // ♥

print("dog : ", dog)
print("heart : ", heart, heart2)

// 비교
print("a > c  : ", a > c) // false
print("heart == ♥  : ", heart == "♥") // true
print("🐶 > ♥ : ", dog > heart) 
