/*
 * 딕셔너리 타입
 */


// 딕셔너리 만들기
// 타입 선언 생략
var dic = ["1월":"January", "2월":"February", "3월":"March"]
// Dictionary 객체 생성
var dic2 : Dictionary<Int, String> = [1 : "One", 2 : "Two", 3 : "Three"]
// Shorthand
var dic3 : [String: Int] = ["일" : 1, "이" : 2, "삼" : 3]
// 빈 Dictionary 객체
var emptyDic = [Int: Int]()

// 딕셔너리 원소의 개수
print("dic.count : ", dic.count)
print("emptyDic.count : ", emptyDic.count)

// 딕셔너리의 값 접근하기
let value1 = dic["1월"]!
print("dic[1월] : ", value1) // "January"
// 딕셔너리에 없는 키로 접근하면 nil이 반환된다.
let value2 = dic3["사"]
print("dic[사] : ", value2) // nil

// 딕셔너리에 없는 키로 접근했을 때 nil대신 출력될 값에 해당하는 키를 입력.
let value3 = dic["사", default: "일"]
print("dic[사, defualt:일] : ", value3)

// 주의 : 딕셔너리의 키가 Int명 배열처럼 보일 수도 있다.
let value4 = dic2[1]!
print("dic2[1] : ", value4) // "One"


// 딕셔너리에 값 설정/수정하기

dic["4월"] = "april"
dic["5월"] = "May"

dic["4월"] = "잔인한 달"
dic.updateValue("계절의 여왕", forKey: "5월")

print("dic : ", dic)

dic.removeValue(forKey:"2월")
dic["3월"] = nil
print("dic[3월] = nil : ", dic)
