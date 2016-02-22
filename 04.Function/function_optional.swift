func nilReturnFunction() -> Int? {
   return nil
}

let ret = nilReturnFunction()


func appendIntToString(str : String, _ val : Int?) -> String {
   // guard를 이용한 early exit, 옵셔널 바인딩
   guard let num = val else {
      return str
   }
   
   return str + String(num)
}

print(appendIntToString("Hello", 1))
print(appendIntToString("Hello", nil))

let optionalVal : Int? = 2
appendIntToString("Swift", optionalVal)

let implicitVal : Int! = 3
appendIntToString("iOS", implicitVal)
// 옵셔널 타입이 아닌 파라미터에 nil을 입력하면 에러 발생
//appendIntToString(nil, 3)


func addStringLength(val : Int, _ arg : String!) -> Int {
   guard let str = arg else {
      return val
   }
   
   return val + str.characters.count
}

print(addStringLength(0, "Hello"))
print(addStringLength(1, nil))
