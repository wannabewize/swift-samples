if 3 > 2  {
   print("3이 2보다 크다!")
}


var obj : String!

if obj != nil  {
   print("obj에 유요한 값")
}



var bloodType = "C"
if bloodType == "A" {
  print("혈액형은 A")
}
else if bloodType == "B" || bloodType == "O" {
  print("B나 O형")
}
else {
  print("그러면 AB형")
}



// if - binding
func someFunc() -> Int! {
   return 1
}

if let val = someFunc() {
   print("\(val)")
}
else {
   print("결과는 nil")
}


func anotherFunc() -> Int! {
   return 1
}

if let val1 = someFunc(), let val2 = anotherFunc() {
   print("val1, val2는 모두 유효한 값")
}

