class MyClass {
   deinit {
      print("메모리에서 해제")
   }
}


print("객체 생성 - 소유")
var obj : MyClass! = MyClass()

print("다른 포인터로 소유하기")
var anotherPointer = obj

print("소유권 해제")
obj = nil
