//
// 타입 메소드
//
protocol Species {
   // 타입 메소드 선언
   static func species() -> String
}

class Cow : Species {
   // 타입 메소드 구현
   static func species() -> String {
      return "소"
   }
}

let cow = Cow()
print(Cow.species())