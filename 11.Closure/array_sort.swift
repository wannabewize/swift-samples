var array = [2, 3, 1, 5, 4];

// 함수 타입이 (Int, Int) -> Bool 인 함수
func sortFunc(a : Int, b : Int) -> Bool {
   return a < b
}

let sorted = array.sort(sortFunc)


// Inline - Closure Expression
let sorted2 = array.sort({ (a:Int, b:Int) -> Bool in
   return a < b
})
sorted2


// 타입 선언 생략
let sorted3 = array.sort( { a, b -> Bool in return a < b } )
sorted3

// 1줄인 경우 return 생략
let sorted4 = array.sort( { a, b -> Bool in a < b } )
sorted4

// 파라미터 선언 생략
let sorted5 = array.sort({ $0 < $1 })
sorted5

// Trailing
let sorted6 = array.sort{ $0 < $1 }
sorted6

// Operator Function
let sorted7 = array.sort( < )
sorted7
