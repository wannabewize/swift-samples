class Counter {
   var value : Int = 0
   
   func increment() -> () -> Int {
      return {
         self.value += 1
         return self.value
      }
   }
   
   deinit {
      print("Deinit")
   }
}

var obj : Counter! = Counter()

var closure : ()->Int = obj.increment()
print(closure())
print(closure())

obj = nil

print("== assign nil to closure")

var obj2  : Counter! = Counter()
var closure2 : (()->Int)! = obj2.increment()

print(closure2())

obj2 = nil
closure2 = nil



print("== Unonwing Self in Closure")
//
//
//
class Counter2 {
   var value : Int = 0
   
   func increment() -> () -> Int {
      return {
         [unowned self] in
         self.value += 1
         return self.value
      }
   }
   
   deinit {
      print("Deinit")
   }
}

var obj3 : Counter2! = Counter2()

var closure3 : (()->Int)! = obj3.increment()
print(closure3())
print(closure3())

obj3 = nil

// closure3()
