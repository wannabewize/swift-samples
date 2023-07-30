struct MyStruct {
    let name: String
    var value: Int
}


var myStruct = MyStruct(name: "myStruct", value: 10)

print("name by property read :", myStruct[keyPath: \.name])
print("value by property read :", myStruct[keyPath: \.value])

struct ComplexStruct {
    let myStruct: MyStruct
}


var complexStruct = ComplexStruct(myStruct: myStruct)

print("name by property read :", complexStruct[keyPath: \.myStruct.name])
print("value by property read :", complexStruct[keyPath: \.myStruct.value])


// KeyPath를 함수 파라미터로 사용

var myStruct2 = MyStruct(name: "myStruct2", value: 20)

func readValue(target: MyStruct, path: KeyPath<MyStruct, Int>) {
    print("read value :", target[keyPath: path])
}

readValue(target: myStruct, path: \.value)
readValue(target: myStruct2, path: \.value)


// WritableKeyPath<MyStruct, T>, value: T) -> MyStruct {
//     var myStruct = MyStruct(name: "myStruct", value: 10)
//     myStruct[keyPath: keyPath] = value
//     return myStruct
// }
