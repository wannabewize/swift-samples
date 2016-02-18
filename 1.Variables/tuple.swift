var one = (1, "one", "일")

print(one.2)
one.2 = "하나"

print(one)


let two = (num : 2, eng : "two", kor : "둘")

print(two.num)		// 2
print(two.kor)		// "둘"


var second = two
second.eng = "Second"
second.kor = "두번째"

print(two)
print(second)


let (num, _, _) = two
print(num)			// 2