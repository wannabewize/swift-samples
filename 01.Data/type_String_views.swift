// https://developer.apple.com/reference/swift/string

let heart = "♥"

print("heart characters : ", Array(heart.characters) )

print("heart unicodeScalars.count : ", heart.unicodeScalars.count)
print("heart.unicodeScalars : ", Array(heart.unicodeScalars))


for c in heart.utf8 {
   print( String(format: "%x", c) )
}

print("heart.utf8.count : ", heart.utf8.count)
let heartUtf8Index = heart.utf8.startIndex
print("First Index : ", heart.utf8[heartUtf8Index])


print("heart.utf16.count : ", heart.utf16.count)
print("heart.utf16 : ", Array(heart.utf16))


let str1 = "I ♥ Swift"
let str2 = "Dog🐶‼"

print("str1 : ", str1);
print("str2 : ", str2);

// CharacterView
print("== CharacterView ")
print("Length : ", str1.characters.count, str2.characters.count)
print("str1 : ", Array(str1.characters))
print("str2 : ", Array(str2.characters))
let indexForChar = str2.index(str2.startIndex, offsetBy: 3)
print("Index(3) : ", str2.characters[indexForChar]) // 🐶

// UnicodeScalar
print("== Unicode Scalars")
print(str1.unicodeScalars)
print("Length : ", str1.unicodeScalars.count, str2.unicodeScalars.count)
print("str1 : ", Array(str1.unicodeScalars))
print("str2 : ", Array(str2.unicodeScalars))
let indexForScalar = str2.unicodeScalars.index(str2.unicodeScalars.startIndex, offsetBy: 3)
print("Index(3) : ", str2.unicodeScalars[indexForScalar]) // 🐶

// UTF8 View
print("== UTF8 View")
print("Length : ", str1.utf8.count, str2.utf8.count)
print("str1 : ", Array(str1.utf8))
print("str2 : ", Array(str2.utf8))
let indexForUtf8 = str2.utf8.index(str2.utf8.startIndex, offsetBy: 3)
print("Index(3) : ", str2.utf8[indexForUtf8]) // 240

// UTF16 View
print("== UTF16 View")
print("Length : ", str1.utf16.count, str2.utf16.count)
print("str1 : ", Array(str1.utf16))
print("str2 : ", Array(str2.utf16))

let indexForUtf16 = str2.utf16.index(str2.utf16.startIndex, offsetBy: 3)
print("Index(3) : ", str2.utf16[indexForUtf16]) // 55357
