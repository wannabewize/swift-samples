/*
 * 문자열과 문자. 인덱스
 */

let str = "Hello Swift"

// 타입
let charView : String.CharacterView = str.characters

// 길이
print("String Length : ", str.characters.count)
print("String Length : ", charView.count)

// String.Index
let startIndex = str.startIndex
let startIndex2 = str.characters.startIndex
let endIndex = str.endIndex

print("StartIndex : ", startIndex, "End Index : ", endIndex)

print(startIndex == startIndex2)

// Index Adjust
let index1 = startIndex.successor() // 0 -> 1
print("index(1) : ", index1) // 1

let index5 = startIndex.advancedBy(5) // 0 -> 3
print("index(5) : ", index5) // 3

let lastPrevIndex = endIndex.predecessor()
print("Last Prev Index : ", lastPrevIndex)

// Character
let ch = str.characters[index1]
print("String[1] : ", ch)