/*
 * 프로토콜 내 선택 구현
 */
import Foundation

@objc protocol Baking {
    func baking() 			      // 필수 구현 메소드
    @objc optional func makeDough() 	// 선택 구현 메소드
    @objc optional var since : Int { get }
}

class BigBakery : Baking {
    func baking() {
        print("빵 굽기")
    }
    
    // 선택 메소드
    func makeDough() {
        print("반죽하기")
    }
    
    // 선택 프로퍼티
    var since: Int = 2006
}

print("== Big Bakery")
let bakery1 = BigBakery()
bakery1.baking()
bakery1.makeDough()
print(bakery1.since)


print("== Small Bakery")
// 필수 항목만 구현한 클래스
class SmallBakery : Baking {
    func baking() {
        print("빵 굽기")
    }
}


let bakery2 = SmallBakery()
bakery2.baking()
// 미구현으로 인한 컴파일 에러
//bakery2.makeDough()


//
// 프로토콜 타입으로 사용
//
let bakery3 : Baking = BigBakery()
let bakery4 : Baking = SmallBakery()

bakery3.baking()

// 구현 여부 불투명!
//bakery3.makeDough()
//bakery4.makeDough()

// 타입 정보 알아보기
print( type(of: bakery3.makeDough )) // Optional<(()) -> ()>
print( type(of: bakery3.since )) // Optional<Int>

bakery3.makeDough!()
bakery4.makeDough?()
// bakery4.makeDough!()