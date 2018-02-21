enum Day {
   case am
   case pm
}

var now : Day
now = Day.am

switch now {
case .am:
   print("오전")
case .pm:
   print("오후")
}

// RawValue

enum Pet : Int {
   case cat = 0, dog, other
}

// rawValue에서 enum얻기
var ael = Pet(rawValue: 0)!
print(ael)

// enum에서 rawValue 얻기
var raz = Pet.cat
print("Pet.cat : rawValue : ", raz.rawValue) // 0
