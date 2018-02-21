/*
 * NSObject와 타입 검사
 */

import Foundation

class Shape : NSObject {
}

class Rectangle : Shape {
}

let child = Rectangle()



if child.isMember(of: Shape.self) {
   print("child는 Shape 클래스")
}

if child.isKind(of: Shape.self) {
   print("child는 Shape의 자식 클래스")
}

// Swift의 is로 타입 검사
if child is Shape {
   print("child is Shape 클래스")
}
