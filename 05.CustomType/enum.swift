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

enum Pet : String {
    case cat = "고양이"
    case dog = "개"
    case other = "그외"
}

// rawValue에서 enum얻기
var ael: Pet? = Pet(rawValue:"고양이")
print(ael)

// enum에서 rawValue 얻기
var raz: Pet = Pet.cat
let razRawValue: String = raz.rawValue
print("Pet.cat : rawValue : ", razRawValue) // 고양이
