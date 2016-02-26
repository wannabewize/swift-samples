// 타입 선언 생략
var dic1 = ["1월":"January", "2월":"February", "3월":"March"]

var dic2 = dic1


print("dic1 == dic2 : ",dic1 == dic2)

dic1["4월"] = "April"
print(dic1)
print(dic2)

print(dic1 == dic2)