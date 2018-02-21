class MyClass {
   deinit {
      print("메모리에서 해제")
   }
}


print("객체 생성")
var obj : MyClass! = MyClass()

print("배열에 저장")
var array = [obj]

print("객체 소유권 해제")
obj = nil


print("배열에서 객체 제거")
array.remove(at: 0)
