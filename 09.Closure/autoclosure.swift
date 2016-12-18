/**
 * autoclosure
 */
var value = 0

func doIt(_ arg : () -> () ) {
   arg()
}

doIt( { value += 10 } )
print("클로저 입력, 실행 결과", value)

func doIt2(_ arg : @autoclosure () -> () ) {
   arg()
}

doIt2(value += 10)
print("autoclosure 실행 결과 : ",value)


/*
 * autoclosure + escaping
 */


var escapedVar : ( () -> () )!

func doIt3(_ arg : @escaping @autoclosure () -> () ) {
   arg()
   escapedVar = arg
}

doIt3( value += 10 )
print("autoclosure, escping 결과 : ", value)

escapedVar()
print("escaping된 프로퍼티 실행 : ", value)