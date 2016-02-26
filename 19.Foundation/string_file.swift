import Foundation

var nsStr : NSString = "Hello Swift"

// 파일 경로
let docPath : NSString = "/Users/wannabewize/Documents"
// 경로 문자열을 다루는 API
let filePath = docPath.stringByAppendingPathComponent("str.txt")

do {
   try nsStr.writeToFile(filePath, atomically: true, encoding: NSUTF8StringEncoding)
   print("파일 저장 성공")
}
catch let error {
   print("파일 저장 실패 : \(error)")
}

do {
   let nsStr2 = try NSString(contentsOfFile: filePath, encoding: NSUTF8StringEncoding)
   print("파일 읽기 : \(nsStr2)")
}
catch let error {
   print("파일 읽기 실패 : \(error)")
}


//
// Swift String의 파일 읽기/쓰기
//

let filePath2 = docPath.stringByAppendingPathComponent("str2.txt")
let swiftStr = "Hello Swift"
do {
   try swiftStr.writeToFile(filePath2, atomically: true, encoding: NSUTF8StringEncoding)
   print("파일 저장 성공")
}
catch let error {
   print("파일 저장 실패 : \(error)")
}


// try?를 사용하면, 에러 발생시 nil이 된다.
let strFromFile = try? String(contentsOfFile: filePath2, encoding: NSUTF8StringEncoding)