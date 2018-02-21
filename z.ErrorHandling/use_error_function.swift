//
//  에러 다루기
//

import Foundation

let str = "Hello Swift"

// 파일로 저장
let filePath = "/Users/wannabewize/Projects/Lecture/Swift-Samples/Sandbox/str.txt"
// str.write(toFile: filePath, atomically: true, encoding: String.Encoding.utf8)

// try를 이용한 호출
try str.write(toFile: filePath, atomically: true, encoding: .utf8)


//
// 잘못된 경로로 에러가 발생
let wrongFilePath = "/Users/wannabewize/Projects/Lecture/Swift-Samples/Sandbox/"
//try str.write(toFile: wrongFilePath, atomically: true, encoding: .utf8)

// 잘못된 경로로 에러가 발생 - do-catch로 에러 처리
do {
    try str.write(toFile: wrongFilePath, atomically: true, encoding: .utf8)
}
catch {
    print("에러 발생")
}

// 잘못된 경로로 에러가 발생 - do-catch로 에러 처리
do {
    try str.write(toFile: wrongFilePath, atomically: true, encoding: .utf8)
}
catch let error {
    print("에러 발생 ", error)
}


// 반환값이 있는 메소드 호출
let str2 = try String(contentsOfFile: filePath)
print(str2)


// 반환값이 있는 메소드에서 발생하는 에러 다루기
do {
    let str3 = try String(contentsOfFile: wrongFilePath)
}
catch let error {
    print("파일 읽기 에러", error)
}

// try?를 이용해서 반환값이 있는 메소드에서 발생하는 에러 다루기
let str4 = try? String(contentsOfFile: wrongFilePath)
if str4 == nil  {
    print("파일 읽기 에러 발생")
}

// 에러 발생 - 애플리케이션 크래쉬
//let str5 = try! String(contentsOfFile: wrongFilePath)
//print(str5)

