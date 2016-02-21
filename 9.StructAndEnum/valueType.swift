class MyClass {
   var value = 0
}

var obj1 = MyClass()
var obj2 = obj1

obj1.value = 10
obj2.value     // 10



struct MyStruct {
   var value = 0
}

var obj3 = MyStruct()
var obj4 = obj3	// 객체 복사

obj3.value = 10
obj4.value	    // 0


var array1 = [1, 2, 3]
var array2 = array1	// 복사

// 하나의 배열의 값 변경
array1.append(4)

array1  	// [1,2,3,4]
array2  	// [1,2,3]

