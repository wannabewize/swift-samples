import Foundation


// NSData로 직렬화
let data = NSKeyedArchiver.archivedDataWithRootObject("String Data")
// NSData에서 읽어오기
if let str = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? String {
   print("NSData에서 복원 : \(str)")
}

// 파일로 저장
let filePath = "/Users/wannabewize/Documents/data.dat"
let ret = NSKeyedArchiver.archiveRootObject("String Data", toFile: filePath)

// 파일에서 읽어오기
if let str = NSKeyedUnarchiver.unarchiveObjectWithFile(filePath) as? String {
   print("파일에서 복원 : \(str)")
}
else {
   print("파일 복원 실패")
}


// 바이너리 데이타를 저장할 NSData 객체
var mdata = NSMutableData()
// 데이터를 인코딩하는 아카이버
var archiver = NSKeyedArchiver(forWritingWithMutableData: mdata)

archiver.encodeBool(true, forKey: "BoolData")
archiver.encodeInteger(77, forKey: "IntData")
archiver.encodeObject("StringValue", forKey: "StrData")
archiver.finishEncoding()

// 길이
print("data size \(mdata.length)")

// NSData에서 복원
var unarchiver = NSKeyedUnarchiver(forReadingWithData: mdata)
let boolData = unarchiver.decodeBoolForKey("BoolData")
let intData = unarchiver.decodeIntegerForKey("IntData")
let strData = unarchiver.decodeObjectForKey("StrData") as! String

print("Bool \(boolData) - Int \(intData) - String : \(strData)")