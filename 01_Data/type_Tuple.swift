var one = (1, "one", "일")

print(one.2)
one.2 = "하나"

print(one)

let two = (num : 2, eng : "two", kor : "둘")

print(two.num)		// 2
print(two.kor)		// "둘"


print("(1,1) == (1,1) : ",(1, "1") == (1, "1"))
print("(1, one) < (2, two) : ", (1, "one") < (2, "two"))
print("(1, one) < (1, first)", (1, "one") < (1, "first"))

var second = two
second.eng = "Second"
second.kor = "두번째"

print(two)
print(second)


let (num, _, _) = two
print(num)			// 2
