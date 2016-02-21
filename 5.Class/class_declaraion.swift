class MyClass {
   // 초기값을 설정한 프로퍼티
   var intProperty = 0
   
   // 초기값을 설정하지 않은 옵셔널 프로퍼티
   var floatProperty : Float?
   
   // 초기값을 설정하지 않은 논-옵셔널 프로퍼티. Initializer가 없으면 에러 발생
//   var strProperty : String
}

// 객체 생성
var obj = MyClass()

// 프로퍼티에 값 저장
obj.intProperty = 10
obj.floatProperty = 3.1

// 프로퍼티에서 값을 얻어오기
let val = obj.floatProperty
val // Optional. 3.1
print(val)