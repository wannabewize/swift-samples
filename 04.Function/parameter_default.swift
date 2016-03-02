func greeting1(whom person : String, emotion : String = "Happy") {
   print("Hello " + person + " with " + emotion)
}

// 기본값이 설정된 파라미터는 호출 시 생략 가능
greeting1(whom: "Swift")
greeting1(whom: "Swift", emotion: "Passion")


//
// 외부 파라미터를 생략, 기본값을 가진 파라미터 2개
//
func greeting2(whom person : String, _ emotion : String = "Happy", _ end : String = "Bye") {
   print("Hello " + person + " with " + emotion)   
}

greeting2(whom: "Swift")
greeting2(whom: "Swift", "Passion")


//
// Ambiguous Use
//
func greeting4(whom person : String) {
    print("Hello " + person)
}
func greeting4(whom person : String, emotion : String = "Happy") {
    print("Hello " + person + " with " + emotion)
}

// error: ambiguous use of 'greeting3(whom:)'
// greeting4(whom: "World")