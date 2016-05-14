//
// guard - binding
//
var nilAvailable : Int? = 1

func example2() {
   guard let val = nilAvailable else {
      print("val은 nil")
      return;
   }
   
   // val 에 접근하기
   print("val은 유효한 값 : \(val)")
}
example2()

func bindingWithWhere() {
   guard let val = nilAvailable where val > 0 else {
      return;
   }
   print("val은 유효하고 0보다 큰 값이다. \(val)")
}
bindingWithWhere()

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