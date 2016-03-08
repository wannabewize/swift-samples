func greeting() -> () -> () {
   let str = "Hello"
   return {
//      () -> () in
      print(str)
   }
}

let str = "Good Morning"
let ret = greeting()
ret() // "Hello" 출력


func increment() -> (Int) -> Int {
   var count = 0
   return {
      count += $0
      return count
   }
}
