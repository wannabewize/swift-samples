import Foundation

// 파라미터가 1개인 함수 정의
func greeting1(person : String) {
   print("Hello " + person)
}

greeting1("Friend")

// 파라미터가 2개인 함수 정의.
func greeting2(person : String, emotion:String) {
   print("Hello " + person + " with " + emotion)
}

// 두 번째 파라미터는 외부 파라미터 적용
greeting2("My Friend", emotion: "Smile")

// 두 번째 파라미터에 외부 파라미터 정의
func greeting3(whom person : String, with emotion : String) {
   print("Hello " + person + " with " + emotion)
}

greeting3(whom: "My Friend", with: "Hug")


// 첫 번째 파라미터에도 외부 파라미터 정의하기
func greeting4(who person : String) {
   print("Hello " + person)
}

greeting4(who: "Swift")


// 외부 파라미터 생략하기
func greeting5( person : String, _ emotion : String) {
   print("Hello " + person + " with " + emotion)
}

greeting5("Swift", "Passion")


func greeting6(whom person : String, emotion : String = "Happy") {
   print("Hello " + person + " with " + emotion)
}

// 기본값이 설정된 파라미터는 호출 시 생략 가능
greeting6(whom: "Swift")
greeting6(whom: "Swift", emotion: "Passion")



// 외부 파라미터를 생략한, 기본값이 설정된 파라미터
func greeting7(whom person : String, _ emotion : String = "Happy", _ end : String = "Bye") {
   print("Hello " + person + " with " + emotion)   
}

greeting7(whom: "Swift")
greeting7(whom: "Swift", "Passion")
