import Foundation

let urlStr = "https://www.google.com/search?q=아이폰"


//
// URL 퍼센트 인코딩/디코딩
//
let encoded = urlStr.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
print(encoded)
let decoded = encoded?.removingPercentEncoding
print(decoded)


// URL 구성 요소
if let encoded = urlStr.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) {
   if let url = URL(string: encoded) {
      print("scheme : \(url.scheme)")
      print("host : \(url.host)")
      print("path : \(url.path)")
      print("query : \(url.query)")
   }
}


