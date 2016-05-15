func otherFunc( arg :  ()->() ) { }

class MyClass {
var closureProperty : (()->())!

   func doIt(arg : ()->()) {
      closureProperty = arg
      otherFunc(arg)
      arg()
   }

   func doIt2() {
      closureProperty()
   }
}

func otherFunc2(@noescape arg : ()->()) {}

class MyClass2 {
var closureProperty : (()->())!

   func doIt(@noescape arg : ()->()) {
   //      closureProperty = arg
   //      otherFunc(arg)
      otherFunc2(arg)
      arg()
   }
}