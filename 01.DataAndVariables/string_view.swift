let str1 = "I \u{2665} Swift"
let str2 = "Dog🐶‼"

print("str1 : ", str1);
print("str2 : ", str2);

// CharacterView
print("== CharacterView ")
print("Length : ", str1.characters.count, str2.characters.count)
print("Index(3) : ", str2.characters[str2.characters.startIndex.advancedBy(3)]) // 🐶


// UnicodeScalar
print("== Unicode Scalars")
print(str1.unicodeScalars)
print("Length : ", str1.unicodeScalars.count, str2.unicodeScalars.count)
print("Index(3) : ", str2.unicodeScalars[str2.unicodeScalars.startIndex.advancedBy(3)]) // 🐶

// UTF8 View
print("== UTF8 View")
print(str1.utf8)
print("Length : ", str1.utf8.count, str2.utf8.count)
print("Index(3) : ", str2.utf8[str2.utf8.startIndex.advancedBy(3)]) // 240

// UTF16 View
print("== UTF16 View")
print(str1.utf16)
print("Length : ", str1.utf16.count, str2.utf16.count)
print("Index(3) : ", str2.utf16[str2.utf16.startIndex.advancedBy(3)]) // 55357