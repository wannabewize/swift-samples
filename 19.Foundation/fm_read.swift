import Foundation

let fm = FileManager.default

let filePath = "/Users/wannabewize/Documents/str.txt"

if fm.fileExists(atPath: filePath) {
   // 파일 핸들러 생성
   if let handler = FileHandle(forReadingAtPath: filePath) {
      handler.seek(toFileOffset: 3)
      let data = handler.readData(ofLength: 6)
      // 읽어온 데이터를 문자열로 변환
      if let str = String(data: data, encoding: .utf8) {
         print("파일 읽기 : \(str)")
      }
   }
}



// 파일 쓰기용 파일 핸들러
if let handler2 = FileHandle(forWritingAtPath: filePath) {
   // 파일에 데이터 쓰기
   let data2 = "새 데이타".data(using: .utf8)
   if let dataForWrite = data2 {
      // 파일 마지막에 덧붙이기
      handler2.seekToEndOfFile()
      handler2.write(dataForWrite)
      // 파일 저장 및 닫기
      handler2.synchronizeFile()
      handler2.closeFile()
   }
}
else {
   print("파일 쓰기 불가능")
}