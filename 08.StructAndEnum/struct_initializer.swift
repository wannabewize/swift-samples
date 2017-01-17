struct MyStruct {
   var value : Int

   func otherJob() {}

   // Designated Initializer
   init(v : Int) {
      self.value = v
   }

   // convenience Initializer
   init() {
      self.init(v:0)
   }
}

let obj1 = MyStruct(v:10)
print(obj1)

let obj2 = MyStruct()
print(obj2)
