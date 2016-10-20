import Foundation


// Swift 배열
let swiftArray1 = ["A", "B", "C"]        	// Swift 배열 : [String]
let swiftArray2 : [Any] = ["A", "B", 3]         	// Swift 배열 : [NSObject]

// NSArray
let nsArray1 : NSArray = ["a", "b", "c"]  // NSArray
let nsArray2 = NSArray(objects: 1, 2, 3)	// NSArray

print(swiftArray1.count)
print(nsArray1.count)


//
// 원소 접근
//

let item1 = swiftArray1[0]
print(item1) // String 타입

let item2 = nsArray1[0]
print(item2, type(of:item2)) // AnyObject 타입
let str = item2 as! String

let item3 = nsArray2.object(at: 1)
print(item3, type(of:item3)) // AnyObject 타입

let strArray : NSArray = ["56", "1234", "7", "890"]


let sorted = strArray.sortedArray(comparator: { (a : Any, b: Any) -> ComparisonResult in
   let str1 = a as! String
   let str2 = b as! String
   return str1.compare(str2)
})


let numArray = strArray.sortedArray(comparator:{
   let str1 = $0 as! String
   let str2 = $1 as! String
   // 숫자로 비교
   return str1.compare(str2, options: .numeric)
})
