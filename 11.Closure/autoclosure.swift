var value = 0
let closureExpress = { value += 10 }

print(value) // 0
closureExpress()
print(value) // 10


func doIt( arg : () -> () ) {
   arg()
   print(value)
}

doIt( {value += 10} )

func doIt2(@autoclosure arg : () -> () ) {
   arg()
   print("autoclosure example : ",value)
}

doIt2(value += 10)


/*
 * autoclosure + escaping
 */


var escapeVar : (()->String)!

func doIt3(@autoclosure(escaping) arg : () -> String ) {
   print(arg())
   escapeVar = arg
}

doIt3("value = \(value)")