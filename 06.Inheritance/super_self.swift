class Parent {
   func description() -> String {
      return "Parent 클래스"
   }
}

class Child : Parent {
   // 재정의
   override func description() -> String {
      return "Child 클래스"
   }
   func printDescription() {
      // 부모 클래스에 구현한 description 메소드
      print("super.description : \(super.description())")
      print("self.description : \(self.description())")
   }
}

var obj = Child()
obj.printDescription()