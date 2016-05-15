var hiddenClosure : (() -> ())!
func otherFunc( arg :  ()->() ) { }

func doIt( arg : ()->() ) {
   arg()
   hiddenClosure = arg
   otherFunc(arg)
}

var value = 0
doIt ({
   value += 10
})
print(value)


hiddenClosure()


func doIt2(@noescape arg : () -> () ) {
   arg()
   //   hiddenClosure = arg
   //   otherFunc(arg)
}

// 두 개의 noescape 파라미터
func doIt3(@noescape arg1 : ()->(), @noescape arg2 : () -> () ) {
//   hiddenClosure = arg1
//   hiddenClosure arg2
   arg1()
   arg2()
}



var otherProperty : (()->())!
func escapeFunc(arg : ()->()) {
   // 객체 소유 가능
   otherProperty = arg
   arg()
}

func noescapeFunc(@noescape arg : ()->() ) {
   arg()
}

class MyClass {
   var value = 0
   
   func doIt() {
      escapeFunc({ self.value = 100 })
      
      noescapeFunc({ value = 200 })
   }
   
   deinit {
      print("MyClass 객체 해제")
   }
}

var obj : MyClass! = MyClass()
obj.doIt()

obj = nil