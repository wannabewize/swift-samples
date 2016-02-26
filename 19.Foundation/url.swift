import Foundation

let urlStr = "https://www.google.com/search?q=아이폰"
if let encoded = urlStr.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLHostAllowedCharacterSet()) {
   if let url = NSURL(string: encoded) {
      print("scheme : \(url.scheme)")
      print("host : \(url.host)")
      print("path : \(url.path)")
      print("query : \(url.query)")
   }
   encoded.stringByRemovingPercentEncoding!
}


