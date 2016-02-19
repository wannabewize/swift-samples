
var strFromInt = String(100)
print(strFromInt)

var strFromBool = String(true)
print(strFromBool)

var str = "I \u{2665} Swift"
let str2 = "가"

// CharacterView
print("== CharacterView ")
print("Length : ", str.characters.count, str2.characters.count)
print("First Character : ", str2.characters[str2.characters.startIndex])


// UTF8 View
print("== UTF8 View")
print(str.utf8)
print("Length : ", str.utf8.count, str2.utf8.count)
print("First Character : ", str2.utf8[str2.utf8.startIndex]) // 99

print("== UTF16 View")
print(str.utf16)
print("Length : ", str.utf16.count, str2.utf16.count)
print("First Character : ", str2.utf16[str2.utf16.startIndex]) // 99

print("== Unicode Scalars")
print(str.unicodeScalars)
print("Length : ", str.unicodeScalars.count, str2.unicodeScalars.count)
print("First Character : ", str2.unicodeScalars[str2.unicodeScalars.startIndex]) // c