/*
 * Optional Binding 예제
 */
//
// if - binding
//
var nilAvailable : Int? = 99

if let val = nilAvailable {
   print("nilAvailable은 유효한 값 : \(val)") // val은 non-optional
}

nilAvailable = nil
if let val = nilAvailable {
   print("유효한 값 : \(val)") // val은 non-optional
}
else {
   print("nilAvailable은 nil이다.")
}

func someFunc() -> Int? {
   return 1
}

func anotherFunc() -> Int? {
   return 0
}

if let val1 = someFunc(), let val2 = anotherFunc() {
   print("val1, val2는 모두 유효한 값")
}

//
// Optional binding and condition
//
let condition = true

if let val = someFunc(), condition == true {
   print("val은 유효한 값이고 condition은 true다.")
}

if let val = anotherFunc(), val > 0 {
   print("anotherFunc의 결과는 유효하고, 0보다 크다 ")
}

//
// if - binding. chain
//

let nilAvailableStr : String? = "123" // "abc", nil
if let val1 = nilAvailableStr, let val2 = Int(val1) {
   print("nilAvailableStr는 유효한 값이고, Int 타입으로 변환하면 : \(val2)다.")
}


//
// guard를 사용한 옵셔널 바인딩
//

func doIt(_ arg: Int?) {
   guard let val = arg else {
      print("입력값은 nil")
      return;
   }
   
   // val 에 접근하기
   print("입력값은 유효한 값 : \(val)")
}
doIt(1)
doIt(nil)

func bindingWithCondition() {
   guard let val = nilAvailable, val > 0 else {
      return;
   }
   print("val은 유효하고 0보다 큰 값이다. \(val)")
}
bindingWithCondition()

//
// guard - biding-chain
//

func bindingChain() {
   let nilAvailableStr : String? = "123" // "abc", nil
   
   guard let val1 = nilAvailableStr, let val2 = Int(val1) else {
      print("nilAvailableStr는 유효하지 않거나 Int로 변환할 수 없다.")
      return;
   }
   
   print("nilAvailableStr는 유효한 값이고, Int 타입으로 변환하면 : \(val2)다.")
}
bindingChain()