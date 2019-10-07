struct Director {
    var name: String
    func greeting() {
        print("\(name)이 인사를 합니다")
    }
}

let bong = Director(name: "봉준호")
bong.greeting()