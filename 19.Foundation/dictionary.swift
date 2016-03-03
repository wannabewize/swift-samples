import Foundation

var swiftDic = ["Key1":"Value1", "Key2":"Value2"]
var nsDic : NSDictionary = [1 : "one", 2 : "two"]


let dic : NSDictionary = [1 : "January", 2 : "Febrary", 3 : "March", 4 : "April"]

let item1 = dic[1]
let item2 = dic.objectForKey(2)

if let value: AnyObject = dic[5] {
   print("Key 5 : Value \(value)")
}
else {
   print("없다.")
}



var mDic = NSMutableDictionary()
// 추가하기
mDic.setObject("Value1", forKey: "Key1")

mDic.setObject(2, forKey: "Key2")
// 덮어쓰기
mDic.setObject([1,2,3], forKey: "Key2")

//  첨자로 삭제
mDic["Key1"] = nil

// 첨자로 변경
mDic["Key2"] = "Value2"

// 첨자로 추가
mDic["Key3"] = "Three"
mDic
