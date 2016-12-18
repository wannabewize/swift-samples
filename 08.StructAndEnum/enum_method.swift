/*
 * Enum에 프로퍼티와 메소드 작성
 */

enum Pet : Int {
   case Cat = 0
   case Dog
   case Other
   
   var name : String {
      switch self {
      case .Cat:
         return "고양이"
      case .Dog:
         return "강아지"
      default:
         return "기타"
      }
   }
   
   func description() -> String {
      return self.name
   }
}

// 프로퍼티와 메소드 사용
var raz = Pet.Cat
print(raz.name)
print(raz.description())
