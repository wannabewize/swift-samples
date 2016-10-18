// 파라미터가 1개인 함수 정의
func greeting(person : String) {
   print("Hello " + person)
}

greeting(person: "Friend")

// 파라미터가 2개인 함수 정의.
func greeting(person : String, emotion:String) {
   print("Hello " + person + " with " + emotion)
}

greeting(person:"My Friend", emotion: "Smile")


// 첫 번째 파라미터에 외부 파라미터 이름 설정
func greeting(who person : String) {
   print("Hello " + person)
}

greeting(who: "Swift")


// 두 번째 파라미터에 외부 파라미터 정의
func greeting(person : String, with emotion : String) {
   print("Hello " + person + " with " + emotion)
}

greeting(person: "My Friend", with: "Hug")


// 외부 파라미터 생략하기
func greeting(_ person : String) {
   print("Hello " + person)
}

greeting("Friend")

func greeting(person : String, _ emotion : String) {
   print("Hello " + person + " with " + emotion)
}

greeting(person: "Swift", "Passion")