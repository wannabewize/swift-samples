import Foundation


var json = "{ \"name\" : \"IU\" }"
let data = json.dataUsingEncoding(NSUTF8StringEncoding)!

// 에러 발생시 nil
if let result = try? NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0)) {
   let name = result["name"]
}
else {
   print("파싱 실패")
}
