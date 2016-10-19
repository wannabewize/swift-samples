/*
 * 타일 알리아스
 */

// 정수형 타입을 Century 타입으로 타입 알리아스
typealias Century = Int

var thisEra : Century
thisEra = 21


// 클로저 타입 알리아스
typealias ResultHandler = (Int) -> Void

func add(_ i : Int, _ j : Int, _ resultHandler : ResultHandler ) {
   let sum = i + j
   resultHandler(sum)
}

add(1, 2) {
   ret in
      print(ret)
}