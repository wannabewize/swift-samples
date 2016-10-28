/**
 * Data를 이용한 Base64 인코딩/디코딩
 */

import Foundation

let str = "Hello Swift"

// Base64 Encoding
if let data = str.data(using: .utf8) {
   let base64Str = data.base64EncodedString()
   print("base64 : ",base64Str)
}


// Base64 Decoding
let encoded = "SGVsbG8gU3dpZnQ="
if let base64Data = Data(base64Encoded: encoded),
   let decoded = String(data: base64Data, encoding: .utf8) {
   
   print("decoded : ", decoded)
}
