var optionalStr : String? = "ABC"
//optionalStr.lowercaseString


if let str = optionalStr {
   print(str.lowercaseString)
}

func myFunc(arg : String?) {
   guard let str = arg else {
      print("파라미터가 nil")
      return;
   }
   
   // str은 옵셔널 타입이 아니다. unwrapped
   print(str.lowercaseString)
}

myFunc(nil)


var userSelectedColor : String?
// nil 이면 Red를 사용
var colorName = userSelectedColor ?? "Red"

colorName // "Red"


// nil 원소를 다룰 수 있는 배열
let array : [String?] = ["A", nil, "C"]
let element = array[0] // element는 옵셔널 타입
print(element)