import Foundation

let fm = NSFileManager.defaultManager()

let filePath = "/Users/wannabewize/Documents/str.txt"

if fm.fileExistsAtPath(filePath) {
   // 파일 핸들러 생성
   if let handler = NSFileHandle(forReadingAtPath: filePath) {
      handler.seekToFileOffset(3)
      let data = handler.readDataOfLength(6)
      // 읽어온 데이터를 문자열로 변환
      if let str = NSString(data: data, encoding: NSUTF8StringEncoding) {
         print("파일 읽기 : \(str)")
      }
   }
}



// 파일 쓰기용 파일 핸들러
if let handler2 = NSFileHandle(forWritingAtPath: filePath) {
   // 파일에 데이터 쓰기
   let data2 = "새 데이타".dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)
   if let dataForWrite = data2 {
      // 파일 마지막에 덧붙이기
      handler2.seekToEndOfFile()
      handler2.writeData(dataForWrite)
      // 파일 저장 및 닫기
      handler2.synchronizeFile()
      handler2.closeFile()
   }
}
else {
   print("파일 쓰기 불가능")
}