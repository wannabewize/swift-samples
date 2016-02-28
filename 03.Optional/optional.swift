// Error
//var i : Int = nil
// Optional Type
var optionalVar : Int? = nil


// nil 원소를 다룰 수 있는 배열
let array : [String?] = ["A", nil, "C"]
let element = array[0] // element는 옵셔널 타입
print(element)


var optionalStr : String? = "ABC"

// OptionalType 직접 사용은 불가!
//optionalStr.lowercaseString

// if를 이용한 옵셔널 바인딩
if let str = optionalStr {
   print(str.lowercaseString)
}

// guard를 이용한 옵셔널 바인딩
func myFunc(arg : String?) {
   guard let str = arg else {
      print("파라미터가 nil")
      return;
   }
   
   // str은 옵셔널 타입이 아니다. unwrapped
   print(str.lowercaseString)
}

myFunc(nil)


// ?? 연산자
var userSelectedColor : String?
var colorName = userSelectedColor ?? "Red"  // nil 이면 Red를 사용
print(colorName) // "Red"
