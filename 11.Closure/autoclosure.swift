var value = 10

let closureExpress = { value += 10 }


func doIt( arg : () -> () ) {
   arg()
   print("normal example : ", value)
}


doIt( {value += 10} )



func doIt2(@autoclosure arg : () -> () ) {
   arg()
   print("autoclosure example : ",value)
}

doIt2(value += 10)
