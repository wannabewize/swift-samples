/**
 * 파운데이션 데이터 타입과 Swift 타입 간 변환
 */
import Foundation

// NSString을 String으로
let nsStr : NSString = "ABC"
let str : String = nsStr as String
print(str)
let nsStr2 : NSString = str as NSString
print(nsStr2)


// NSArray <-> Array
let nsArray = NSArray(arrayLiteral: "a", "b", "c")
let array = nsArray as! Array<String>
print(array)
let nsArray2 = array as NSArray
print(nsArray2)

// NSDictionary <-> Dictionary
let nsDic = NSDictionary(dictionaryLiteral: (1, "one"), (2, "two"), (3, "three"))
print(nsDic)
let dic = nsDic as! Dictionary<Int, String>
print(dic)
let nsDic2 = dic as NSDictionary
print(nsDic2)