import Foundation

let fm = FileManager.default

let originPath = "/Users/wannabewize/Documents/str.txt"

if fm.fileExists(atPath:originPath) {
   print("파일 존재")
   let copyPath = "/Users/wannabewize/Documents/str2.txt"
   
   // 파일 복사
   do {
      try fm.copyItem(atPath:originPath, toPath: copyPath)
      print("파일 복사 성공")
   }
   catch let error {
      print("파일 복사 실패 : \(error)")
   }
   
   do {
      try fm.removeItem(atPath:copyPath)
      print("파일 삭제 성공")
   }
   catch let error {
      print("파일 삭제 실패 : \(error)")
   }
}
else {
   print("파일 없음")
}
