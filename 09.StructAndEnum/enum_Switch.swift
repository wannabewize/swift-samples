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