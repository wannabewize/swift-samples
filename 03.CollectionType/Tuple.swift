//
// 튜플(Tuple)
//

// 튜플 선언. 타입 생략 가능
var one = (1, "one", "일")
// 튜플 타입 선언
let two: (Int, String, String) = (num : 2, eng : "two", kor : "둘")

// 투플 원소에 접근해서 값 얻기/변경
print(one.2)
one.2 = "하나"

print("one : ", one)

// 튜플 원소에 이름 설정
let three: (num: Int, eng: String, kor: String) = (num : 2, eng : "two", kor : "둘")

print("num : \(three.num), kor : \(three.kor)")

// 투플 간 비교
print("(1,1) == (1,1) : ",(1, "1") == (1, "1"))
print("(1, one) < (2, two) : ", (1, "one") < (2, "two"))
print("(1, one) < (1, first)", (1, "one") < (1, "first"))

// 새로운 튜플에 값 대입 - 복사된다.
var sam = three
sam.eng = "Third"
sam.kor = "세번째"

// 튜플 원소 대입
let (two1, two2, two3) = two
print("튜플(two)의 두 번째 원소 :", two2)

// 튜플 원소 중 일부만 대입
let (_, engOne, _) = one
print("튜플(one)의 두 번째 원소 :", engOne)
