/*
 * 클로저 escaping, noescape
 */


//
// non-escaping 속성의 클로저는 범위 밖으로 전달 불가
//
class MyClass1 {
   var prop : (() -> ())!
   func closureFunc(_ arg : () -> () ) {
//      self.prop = arg // Error
   }
}

//
// escaping 속성의 클로저는 함수(메소드) 외부로 전달 가능
//
class MyClass2 {
   var prop : (() -> ())!
   func closureFunc(_ arg : @escaping () -> () ) {
      self.prop = arg
   }
}


//
// non-escaping 속성의 클로저는 non-escaping 속성의 파라미터로 전달 가능
//
class MyClass3 {
   func closureFunc(_ arg : () -> () ) {
      otherFunc(arg)
   }
   
   func otherFunc(_ arg : () -> () ) {
      print("Other function works")
      arg()
   }
}

let obj3 = MyClass3()
obj3.closureFunc {
   print("escaping example")
}

//
// non-escaping 속성의 클로저는 escaping 속성의 파라미터로 전달 불가
//
class MyClass4 {
   func closureFunc(_ arg : () -> () ) {
//      otherFunc(arg)
   }
   
   func otherFunc(_ arg : @escaping () -> () ) {
      print("Other function works")
      arg()
   }
}

