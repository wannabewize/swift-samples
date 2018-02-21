//
// 튜플(Tuple)
//

// 튜플 선언. 타입 생략 가능
var one: (Int, String, String) = (1, "one", "일")

// 투플 원소에 접근해서 값 얻기/변경
print(one.2)
one.2 = "하나"

print("one : ", one)

// 각 원소에 이름 짓기. 타입 선언에도 이름을 선언한다.
let two: (num: Int, eng: String, kor: String) = (num : 2, eng : "two", kor : "둘")

print(two.num)        // 2
print(two.kor)        // "둘"

// 투플 간 비교
print("(1,1) == (1,1) : ",(1, "1") == (1, "1"))
print("(1, one) < (2, two) : ", (1, "one") < (2, "two"))
print("(1, one) < (1, first)", (1, "one") < (1, "first"))

// 새로운 튜플에 값 대입 - 복사된다.
var second = two
second.eng = "Second"
second.kor = "두번째"

print("튜플(two) :",two)
print("튜플(second) :",second)

// 튜플 원소 대입
let (two1, two2, two3) = two
print("튜플(two)의 두 번째 원소 :", two2)

// 튜플 원소 중 일부만 대입
let (_, engOne, _) = one
print("튜플(one)의 두 번째 원소 :", engOne)
