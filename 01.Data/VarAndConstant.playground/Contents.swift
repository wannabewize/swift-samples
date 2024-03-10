/*
* 변수
*/

// 값과 함게 변수 선언
var value = 10

// 변수의 값은 변경 가능
value = 20

// 예약어를 변수로 사용하기
var `default` = 1
var `var` = "Variable"

// 변수의 타입 작성
var value2: Int = 10

// 초기값 없이 변수 선언. 단 타입 선언 필요
var value3 : Int
value3 = 10

// 초기화되지 않은 변수 사용은 에러
var value4 : Int
// error: variable 'value4' used before being initialized
// print(value4)

// 타입이 다른 값을 대입하면 에러
var value5: Int = 10
// error: cannot assign value of type 'String' to type 'Int'
// value5 = "10"


/*
* 상수
*/

// 값 대입 후 변경 불가
let constant = 10
// Error : 상수의 값은 변경 불가
// constant = 20

// 타입과 함께 상수 선언과 바인딩 분리
let constant2 : Float
constant2 = 1.23

