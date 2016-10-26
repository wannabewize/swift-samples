/**
 * Designated, Convenience Initializer
 */
class MyClass {
   var a : Int
   var b : Int
   
   // Designated Intializer
   init() {
      a = 0
      b = 0
   }
   
   // Designated Intializer
   init(a:Int, b:Int) {
      self.a = a
      self.b = b
   }
   
   // Convenience Intializer
   convenience init(b:Int) {
      self.init()    // Initializer delegation
      self.b = b
   }
}


// Designated Initializer로 객체 생성
var obj1 = MyClass()
var obj2 = MyClass(a: 1, b: 2)

// Convenience Initializer로 객체 생성
var obj3 = MyClass(b: 2)