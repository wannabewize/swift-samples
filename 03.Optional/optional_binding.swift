//
// if - binding
//
var nilAvailable : Int? = 0
// nilAvailable = nil

if let val = nilAvailable {
   print("유효한 값 : \(val)") // val은 non-optional
}
else {
   print("nil이다.")
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
// if - binding, where
//
let condition = true
if let val = someFunc() where condition == true {
  print("val은 유효한 값이고 condition은 true다.")
}

if let val = anotherFunc() where anotherFunc() > 0 {
  print("anotherFunc의 결과는 유효하고, 0보다 크다 ")
}

//
// if - binding. chain
//

let nilAvailableStr : String? = "123" // "abc", nil
if let val1 = nilAvailableStr, let val2 = Int(val1) {   
   print("nilAvailableStr는 유효한 값이고, Int 타입으로 변환하면 : \(val2)다.")
}