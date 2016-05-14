//
// Basic
//
if 3 > 2  {
   print("3이 2보다 크다!")
}


//
// nil 비교
//
var obj : String!

if obj != nil  {
   print("obj에 유요한 값")
}

//
// if - else if - else
//
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

