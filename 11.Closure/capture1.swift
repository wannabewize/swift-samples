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



import Foundation

// UpDown 게임 생성기
func makeUpdownGame(num : Int) -> Int -> String {
   var trial = 0;
   // 주어진 범위 내 난수 생성. Foundation 프레임워크 필요
   let goal = Int(arc4random_uniform(UInt32(num)))
   
   print("게임 생성됨 - Goal : \(goal)")
   return {
      if $0 < goal {
         return "시도 횟수 : \(++trial) 결과 : UP"
      }
      else if $0 > goal {
         return "시도 횟수 : \(++trial) 결과 : Down"
      }
      return "시도 횟수 : \(trial) Bingo"
   }
}

print("게임 생성")
let game = makeUpdownGame(10)
let ret1 = game(5)
print("5 시도. 결과 : ", ret1)

let ret2 = game(8)
print("8 시도. 결과 : ", ret2)
