/*
 * 제네릭스를 사용하는 함수와 타입 작성
 */


// 제네릭스로 타입 추상화 함수

func printValue<T>(_ v : T) {
   print("Value \(v)")
}

printValue("a")
printValue(1)
printValue(1.3)



// 제네릭스를 사용하는 클래스
class Hospital<T> {
   func hospitalize(_ patient : T) {
      print("병원에 입원")
   }
}

class Human {}

struct Pet {}


// Human 타입 객체 다루기
let hospital = Hospital<Human>()

let patient = Human()
hospital.hospitalize(patient)


// Pet 타입 객체를 다루기
let petHospital = Hospital<Pet>()

let kitty = Pet()
petHospital.hospitalize(kitty)



