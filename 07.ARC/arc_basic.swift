class MyClass {
   deinit {
      print("메모리에서 해제")
   }
}


print("== 객체 생성과 해제 실습")
print(" - 객체 생성")
var obj : MyClass! = MyClass()

print(" - 소유권 해제")
obj = nil


print("== 객체 소유 추가하기")
print(" - 객체 생성")
var obj2 : MyClass! = MyClass()

print(" - 객체 소유")
var anotherPointer = obj2

print(" - 소유권 해제")
obj2 = nil

print("== 실습 종료")
