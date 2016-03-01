func greeting(whom person : String) {
    print("Hello " + person)
}
func greeting(whom person : String, emotion : String = "Happy") {
    print("Hello " + person + " with " + emotion)
}

// greeting(whom: "World")



func greeting2(whom person : String, emotion : String = "Happy") {
    print("Hello " + person + " with " + emotion)
}

func greeting2(whom person : String) {
    print("Hello " + person)
}

// greeting2(whom: "World")