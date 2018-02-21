// https://developer.apple.com/reference/swift/string

let str = "I ♥ Swift"
print("str : ", str)

let charViews : String.CharacterView = str.characters
let charArray = Array(charViews)
print("Character count :", charArray.count, " Character Array :", charArray)

// UTF8
let utf8Views : String.UTF8View = str.utf8
let utf8Array = Array(utf8Views)
print("UTF8 count :", utf8Array.count, " UTF8 Array :", utf8Array)

// UTF16
let utf16View : String.UTF16View = str.utf16
let utf16Array = Array(utf16View)
print("UTF16 count :", utf16Array.count, " UTF16 Array :", utf16Array)

// UnicodeScalars
let scalars = str.unicodeScalars
let scalarsArray = Array(scalars)
print(scalarsArray)

print("=====")

let str2 = "🐶‼"
print("str2 : ", str2)

let charViews2 : String.CharacterView = str2.characters
let charArray2 = Array(charViews2)
print("Character count :", charArray2.count, " Character Array :", charArray2)

// UTF8
let utf8Views2 : String.UTF8View = str2.utf8
let utf8Array2 = Array(utf8Views2)
print("UTF8 count :", utf8Array2.count, " UTF8 Array :", utf8Array2)

// UTF16
let utf16View2 : String.UTF16View = str2.utf16
let utf16Array2 = Array(utf16View2)
print("UTF16 count :", utf16Array2.count, " UTF16 Array :", utf16Array2)

// UnicodeScalars
let scalars2 = str2.unicodeScalars
let scalarsArray2 = Array(scalars2)
print(scalarsArray2)