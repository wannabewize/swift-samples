func sayHello(who : String) {
   print("Hello \(who)")
}

// Error
//sayHello(who: nil)


// nil이 반환될 수도 있는 함수
func nilReturnFunction() -> Int? {
   return nil
}

let ret = nilReturnFunction()

// 함수 실행 결과를 이용한 옵셔널 바인딩
if let ret = nilReturnFunction() {
   print("실행 결과 : \(ret)")
}


func append(str : String, int val : Int?) -> String {
   // guard를 이용한 파라미터 nil 검사.
   guard let num = val else {
      return str
   }
   
   return str + String(num)
}

let ret1 = append(str: "Hello", int: 1)
print(ret1)

// nil을 파라미터로 입력
let ret2 = append(str: "Welcome", int: nil)
print(ret2)


let iuoVal : Int! = 3
let ret3 = append(str: "Bye", int: iuoVal)
print(ret3)



func areYouReady() -> Bool! {
   return nil
}

let ready : Bool! = areYouReady()
print("ready? \(ready)")
