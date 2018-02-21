func versionTest() {
   if #available(iOS 9, *) {
      print("iOS9 이상")
   }
   
   if #available(macOS 10.12, *) {
      print("macOS 10.12 이상")
   }
   else {
      print("macOS 10.12 아래")
   }
   
   guard #available(iOS 10, macOS 10.12, tvOS 10, watchOS 3, *) else {
      print("최신 버전이 아님")
      return
   }
   
   print("최신 버전")
}

versionTest()