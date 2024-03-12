/*
* print함수를 이용해서 콘솔에 출력하기
*/

// 문자열 변수/상수 출력하기
let value = "Swift"
print(value)

// 문자열 타입이 아닌 값 출력
let intValue = 100
print(intValue)

// 콤마(,)를 이용해서 다수의 값 출력하기
print("Hello", value)

// String interpolation을 이용한 출력
print("Hello \(value)")

let someValue = 100
print("value는 100보다 \(someValue >= 100 ? "크거나 같다." : "작다")")

// Custom Type의 객체 출력하기
struct MyStruct {
    var value: Int
}

let object1 = MyStruct(value: 100)
print("object \(object1)", object1)

struct WrapperStruct {
    var inner: MyStruct
}

let object2 = WrapperStruct(inner: MyStruct(value: 200))
print("nested object \(object2)")



