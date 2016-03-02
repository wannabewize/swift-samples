import Foundation

func makeUpdownGame(num : Int) -> Int -> () {
   var trial = 0;
   // 주어진 범위 내 난수 생성. Foundation 프레임워크 필요
   print("trial : \(trial)")
   let goal = Int(arc4random_uniform(UInt32(num)))
   print("게임 생성됨 - Goal : \(goal)")
   
   return {
      if $0 < goal {
         print("시도 횟수 : \(++trial) 결과 : UP")
      }
      else if $0 > goal {
         print("시도 횟수 : \(++trial) 결과 : Down")
      }
      else {
         print("시도 횟수 : \(trial) Bingo")
      }
   } // 파라미터, 리턴 타입 선언 생략
}


// trial, goal을 각 클로저마다 복사

let game = makeUpdownGame(10)
game(5)
game(8)


let game2 = makeUpdownGame(20)
game2(10)
game2(8)