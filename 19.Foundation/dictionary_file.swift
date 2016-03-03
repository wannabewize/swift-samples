import Foundation

let path = "/Users/wannabewize/Documents/dictionary.plist"

// NSDictionary의 키가 원시 타입이면 저장 안됨
let dic : NSDictionary = ["January":1, "Febrary":2, "March":3, "April":4]
let ret = dic.writeToFile(path, atomically: true)
if ret {
   print("파일 저장 성공")
}
else {
   print("파일 저장 실패")
}

let dic2 = NSDictionary(contentsOfFile: path)
print(dic2)