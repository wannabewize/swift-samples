import Foundation

// 콘솔에서 동작시키는 경우, 경로 설정이 잘 된다.
let url = URL(fileURLWithPath: "json_data.json")

// 파일 존재 확인
let fm = FileManager.default
if !fm.fileExists(atPath: url.path) {
   print("JSON 파일 접근 안됨 : ", url.path)
   exit(1) // program exit
}

do {
   let data = try Data(contentsOf: url)
   let result = try JSONSerialization.jsonObject(with: data, options: [])
   
   if let root = result as? [String: Any],
      let devices = root["device"] as? [Any],
      let iPhone7 = devices[0] as? [String:Any] {

         print("iPhone7 : ", iPhone7)         
         if let spec = iPhone7["spec"] as? [String:Any],
            let cpu = spec["cpu"] as? String {
            print("iPhone7's cpu is", cpu)
         }      
   }   
}
catch let error {
   print("Error : ", error.localizedDescription)
}

// 참고 : https://developer.apple.com/swift/blog/?id=37