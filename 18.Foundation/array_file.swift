import Foundation

var array1 : NSArray = ["A", "B", 3]
let path = "/Users/wannabewize/Documents/array.plist"

let result = array1.writeToFile(path, atomically:true)
print("배열 저장 성공 : \(result)")

// 파일에서 읽기
let array2 = NSArray(contentsOfFile:path)
print("array from file : \(array2))")

