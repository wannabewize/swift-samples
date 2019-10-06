/*
 * class 정의와 객체 생성
 */

class Person {
    var name : String = ""
    var age : Int = 0
}

let tarantino = Person()
tarantino.name = "Quentin Jerome Tarantino"

print(tarantino.name)


class Drink {
    var name: String?
    var price: Int?
}


class Unit {
    var life = 0
}

class MovingUnit : Unit {
    var x = 0
    var y = 0
}

let scv = MovingUnit()
scv.life = 100
scv.x = 10
scv.y = 20