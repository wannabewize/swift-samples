/*
 * 배열 저장
 */

import Foundation

let array1 : NSArray = ["A", "B", 3]
let path = "/Users/wannabewize/Documents/array.plist"

let result = array1.write(toFile:path, atomically:true)
print("배열 저장 성공 : \(result)")

// 파일에서 읽기
let array2 = NSArray(contentsOfFile:path)
print("array from file : \(array2))")


//
// Swift Array 저장 -> NSArray로 타입 캐스팅
//

let array3 = [1, 2, 3]
let path2 = "/Users/wannabewize/Documents/array2.plist"

let array4 : NSArray = array3 as NSArray
array4.write(toFile: path2, atomically: true)

let array5 = NSArray(contentsOfFile: path2)
print(array5)
