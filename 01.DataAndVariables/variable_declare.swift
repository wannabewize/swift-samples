// 변수 선언하기 - 타입 선언 생략
var intVar = 10

// 타입 선언과 함께 변수 선언
var varWithType : Int = 20

// 변수의 값 변경하기
intVar = 30
print(intVar)

// 실수형 변수 선언 - 타입 선언 생략 시 실수형 기본 타입은 Float
var floatVar = 3.14
// Double 타입으로 변수 선언
var doubleVar : Double = 3.14

var intVar2 : Int
intVar2 = 10
print(intVar2)

//
// 타입 에러
//

// error : cannot assign value of type 'Double' to type 'Int'
// intVar = 3.14

// error : cannot convert value of type 'Double' to specified type 'Int'
// var intVar3 : Int = 3.14 

// error: cannot assign value of type 'Double' to type 'Int'
// var floatVar = 3.14
// intVar = floatVar

//
// 초기화 되지 않은 변수 사용 에러
//

// error : variable 'uninitalizedVar' used before being initialized
// var uninitalizedVar : Int
// print(uninitalizedVar)