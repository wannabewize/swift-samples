import Foundation


// Data로 직렬화
let data = NSKeyedArchiver.archivedData(withRootObject: "String Data")
// NSData에서 읽어오기
if let str = NSKeyedUnarchiver.unarchiveObject(with: data) as? String {
   print("NSData에서 복원 : \(str)")
}

// 파일로 저장
let filePath = "/Users/wannabewize/Documents/data.dat"
let ret = NSKeyedArchiver.archiveRootObject("String Data", toFile: filePath)

// 파일에서 읽어오기
if let str = NSKeyedUnarchiver.unarchiveObject(withFile: filePath) as? String {
   print("파일에서 복원 : \(str)")
}
else {
   print("파일 복원 실패")
}


// 바이너리 데이타를 저장할 NSMutableData 객체
var mdata = NSMutableData()
// 데이터를 인코딩하는 아카이버
var archiver = NSKeyedArchiver(forWritingWith: mdata)

archiver.encode(true, forKey: "BoolData")
archiver.encode(77, forKey: "IntData")
archiver.encode("StringValue", forKey: "StrData")
archiver.finishEncoding()

// 길이
print("data size \(mdata.length)")

// NSData에서 복원
var unarchiver = NSKeyedUnarchiver(forReadingWith: mdata as Data)
let boolData = unarchiver.decodeBool(forKey:"BoolData")
let intData = unarchiver.decodeInteger(forKey:"IntData")
let strData = unarchiver.decodeObject(forKey:"StrData") as! String

print("Bool \(boolData) - Int \(intData) - String : \(strData)")