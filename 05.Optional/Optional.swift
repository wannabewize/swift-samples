/*
 * Optional, nil 예제
 */

// Error
// var i : Int = nil
// Optional Type

var optionalVar : Int? = nil
var optionalVar2 : Optional<Int> = nil

print("nil 대입된 변수 : ",optionalVar, optionalVar2)

// 타입 변환시 발생하는 nil
let intFromStr = Int("a") // Int? 타입
print("int from string : ", intFromStr)

// 딕셔너리 원소 접근
let numbers = ["one":1, "two":2]
let three = numbers["three"] // Int?
print("three from dictionary : ", three)


/**
 * 옵셔널 타입의 값을 사용하기 - 언래핑 필요
 */

var optionalNumber: Int? = 10
// 컴파일 에러
// let ret = optionalNumber + 1
