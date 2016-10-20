import Foundation

var nsStr : NSString = "Hello Swift"

// 파일 경로
let docPath : NSString = "/Users/wannabewize/Documents"
// 경로 문자열을 다루는 API
let filePath = docPath.appendingPathComponent("str.txt")

do {
   try nsStr.write(toFile: filePath, atomically: true, encoding: String.Encoding.utf8.rawValue)
   print("파일 저장 성공")
}
catch let error {
   print("파일 저장 실패 : \(error)")
}

// 파일에서 문자열 읽기
do {
   let nsStr2 = try NSString(contentsOfFile: filePath, encoding: String.Encoding.utf8.rawValue)
   print("파일 읽기 : \(nsStr2)")
}
catch let error {
   print("파일 읽기 실패 : \(error)")
}


//
// Swift String의 파일 읽기/쓰기
//

let filePath2 = docPath.appendingPathComponent("str2.txt")
let swiftStr = "Hello Swift"
do {
   try swiftStr.write(toFile: filePath2, atomically: true, encoding: .utf8)
   print("파일 저장 성공")
}
catch let error {
   print("파일 저장 실패 : \(error)")
}

// 파일에서 문자열 읽기
let swiftStr2 = try? String(contentsOfFile: filePath2)
print(swiftStr2)