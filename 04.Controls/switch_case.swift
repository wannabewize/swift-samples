var someValue = 3
switch someValue {
case 1:
   print("1")
   // 모든 가능한 경우를 비교하는 case가 없으면 default 필수
default:
   print("Other")
}

switch someValue {
case 1, 2, 3:
   print("1, 2 혹은 3")
   fallthrough		// 이후 case실행
case 4 ..< 6:
   print("4에서 5사이")
case 6:
   print("Six")
default:
   print("나머지.")
}

// String
var str = "Morning"
switch str {
case "Morning":
   print("Good Morning")
case "Afternoon":
   print("Good Afternoon")
case "Evening":
   print("Good Evening")
default:
   print("Bye Bye")
}

// 튜플
var tupleVal = (1, "One")
switch tupleVal {
case (0, "Zero"):
   print("0, zero")
case (0, "영"):
   print("0, 영")
case (1, _):
   print("1, 일")
default:
   print("Other)")
}

// Value binding
var point = (2, 2)
switch point {
case (1, let y):
   print("1, \(y)")
case (let x, 2) :
   print("\(x), 2")
case let(x, y):
   print("\(x), \(y)")
}

// Value binding and where
switch point {
case let(x, y) where x > 0:
   print("x가 0보다 크다")
case let(x, y) where x < 0 && y > 0:
   print("2사 분변")
default:
   print("그 외")
}