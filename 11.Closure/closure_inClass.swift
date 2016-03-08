class MyClosureClass {
   var value = 0
   
   // 클로저를 반환하는 메소드
   func showAndPrint() -> () -> () {
      return {
         // self를 이용해서 접근한다.
         print(self.value)
      }
   }
   
   // 클로저 타입의 프로퍼티
   var closureProperty : (()->Int)!
}

var obj = MyClosureClass()
obj.closureProperty = {
   return 0
}
obj.closureProperty()