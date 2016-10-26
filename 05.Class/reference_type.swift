//
// Reference Type vs Value Type
//

class MyClass {
   var value : Int = 0
}

var obj1 = MyClass()      // 객체 생성
var obj2 = obj1

// 프로퍼티의 값을 변경
obj1.value = 10

print(obj1.value)
print(obj2.value)