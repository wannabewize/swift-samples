enum Day {
   case AM
   case PM
}

var now : Day
now = Day.AM

switch now {
case .AM:
   print("오전")
case .PM:
   print("오후")
}

// RawValue

enum Pet : Int {
   case Cat = 0
   case Dog
   case Other
}

// rawValue에서 enum얻기
var ael = Pet(rawValue: 0)!
print(ael)

// enum에서 rawValue 얻기
var raz = Pet.Cat
print("Pet.cat : rawValue : ", raz.rawValue) // 0
