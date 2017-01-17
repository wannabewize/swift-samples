/*
 * Enum에 프로퍼티와 메소드 작성
 */

enum Pet : Int {
   case cat = 0, dog, other
   
   var name : String {
      switch self {
      case .cat:
         return "고양이"
      case .dog:
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
var raz = Pet.cat
print(raz.name)
print(raz.description())
