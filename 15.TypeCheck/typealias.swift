typealias Century = Int

var thisEra : Century
thisEra = 21



typealias ResultHandler = (Int) -> Void

func add(i : Int, _ j : Int, _ resultHandler : ResultHandler ) {
   let sum = i + j
   resultHandler(sum)
}

add(1, 2) {
   print($0)
}