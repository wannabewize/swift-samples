protocol Species {
   // 타입 메소드
   static func species() -> String
   // 타입 프로퍼티 선언
   static var averageLife : Int { get }
}

class Cow : Species {
   // 타입 프로퍼티 구현
   static var averageLife : Int {
      return 10
   }
   
   // 타입 메소드 구현
   static func species() -> String {
      return "소"
   }
}

print(Cow.averageLife)
print(Cow.species())