import Foundation

let path = "/Users/wannabewize/Documents/dictionary.plist"

// NSDictionary의 키가 원시 타입이면 에러는 안나지만 실제 저장 안됨
let dic : NSDictionary = ["January":1, "Febrary":2, "March":3, "April":4]
let ret = dic.write(toFile:path, atomically: true)
if ret {
   print("파일 저장 성공")
}
else {
   print("파일 저장 실패")
}

let dic2 = NSDictionary(contentsOfFile: path)
print(dic2)


let path2 = "/Users/wannabewize/Documents/dictionary2.plist"

let dic3 = ["일":"one", "이":"two", "삼":"three"]

let dic4 = dic3 as NSDictionary
let ret2 = dic4.write(toFile: path2, atomically: true)
if ret {
   print("파일 저장 성공")
}
else {
   print("파일 저장 실패")
}

let dic5 = NSDictionary(contentsOfFile: path2)
print(dic5)