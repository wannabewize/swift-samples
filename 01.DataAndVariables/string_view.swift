let str1 = "I \u{2665} Swift"
let str2 = "가"
let str3 = "Dog‼🐶"
print("str1 : ", str1);
print("str2 : ", str2);
print("str3 : ", str3);

//
// CharacterView
//
print("== CharacterView ")
print("Length : ", str1.characters.count, str2.characters.count, str3.characters.count)
let index0 = str1.characters.startIndex
print("Index0 Character(Str1) : ", str1.characters[index0]) // 가
print("First Character(Str3) : ", str3.characters[str3.characters.startIndex]) // 가

// UTF8 View
print("== UTF8 View")
print(str1.utf8)
print("Length : ", str1.utf8.count, str2.utf8.count)
print("First Character : ", str2.utf8[str2.utf8.startIndex]) // 234

print("== UTF16 View")
print(str1.utf16)
print("Length : ", str1.utf16.count, str2.utf16.count)
print("First Character : ", str2.utf16[str2.utf16.startIndex]) // 44032

print("== Unicode Scalars")
print(str1.unicodeScalars)
print("Length : ", str1.unicodeScalars.count, str2.unicodeScalars.count)
print("First Character : ", str2.unicodeScalars[str2.unicodeScalars.startIndex]) // 가
