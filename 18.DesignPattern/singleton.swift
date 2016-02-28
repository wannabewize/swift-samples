class MyClass {
   static let sharedInstance = MyClass()
}


let obj1 = MyClass.sharedInstance
let obj2 = MyClass.sharedInstance
print("obj === obj2", obj1 === obj2) // true
