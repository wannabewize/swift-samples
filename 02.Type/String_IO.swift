import Foundation

let str = "Hello Swift"

// 파일로 저장
let filePath = "/Users/wannabewize/Documents/str.txt"
///Users/wannabewize
do {
   try str.write(toFile: filePath, atomically: true, encoding: String.Encoding.utf8)
}
catch {
   print("Error")
}

// 파일에서 읽기
do {
   let str2 = try String(contentsOfFile: filePath)
   print(str2)
}
catch {
   print("Error")
}
