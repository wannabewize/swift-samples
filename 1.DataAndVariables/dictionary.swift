// 타입 선언 생략
var dic = ["1월":"January", "2월":"February", "3월":"March"]
// Dictionary 객체 생성
var dic2 : Dictionary<Int, String> = [1 : "One", 2 : "Two", 3 : "Three"]
// Shorthand
var dic3 : [String: Int] = ["일" : 1, "이" : 2, "삼" : 3]
// 빈 Dictionary 객체
var emptyDic = [Int: Int]()

dic2
dic3
dic

dic.count
emptyDic.count


// 딕셔너리 항목 접근. 배열처럼 보일 수도 있다.
dic["1월"] // "January"
dic2[1] // "One"
// 없는 키에 접근
dic3["사"] // nil


dic["4월"] = "april"
dic["5월"] = "May"


dic["4월"] = "잔인한 달"
dic.updateValue("계절의 여왕", forKey: "5월")

dic

dic.removeValueForKey("2월")
dic["3월"] = nil
dic
