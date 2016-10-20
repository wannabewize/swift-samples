import Foundation


// NSObject의 자식 클래스, NSCoding 프로토콜 채택
class Person : NSObject, NSCoding {
   var name : String
   var birthYear : Int
   
   init(name : String, birthYear : Int) {
      self.name = name
      self.birthYear = birthYear
   }
   
   // 객체 프로퍼티 인코딩
   func encode(with aCoder: NSCoder) {
      aCoder.encode(name, forKey: "Name")
      aCoder.encode(birthYear, forKey: "Year")
   }
   
   // 객체 프로퍼티 디코딩
   required init(coder aDecoder: NSCoder) {
      name = aDecoder.decodeObject(forKey:"Name") as! String
      birthYear = aDecoder.decodeInteger(forKey:"Year")
   }
}


// 저장
var obj = Person(name: "태연", birthYear: 1989)

// 파일로 아카이빙
let filePath = "/Users/wannabewize/Documents/data.dat"
let ret = NSKeyedArchiver.archiveRootObject(obj, toFile: filePath)

// 복원
if let obj = NSKeyedUnarchiver.unarchiveObject(withFile:filePath) as? Person {
   print("name : \(obj.name) - birthYear : \(obj.birthYear)")
}


class Actor : Person {
   var filmography : [String]?
   override func encode(with aCoder: NSCoder) {
      aCoder.encode(filmography, forKey: "Filmography")
      super.encode(with: aCoder)
   }
   required init(coder aDecoder: NSCoder) {
      self.filmography = aDecoder.decodeObject(forKey: "Filmography") as? [String]
      super.init(coder: aDecoder)
   }
   override init(name : String, birthYear : Int) {
      super.init(name: name, birthYear: birthYear)
   }
}


// 객체
var actor = Actor(name: "스칼렛 요한슨", birthYear: 1984)
actor.filmography = ["루시", "어밴져스"]

// 인코딩
let dataActor = NSKeyedArchiver.archivedData(withRootObject:actor)

// 디코딩
if let obj = NSKeyedUnarchiver.unarchiveObject(with: dataActor) as? Actor {
   print("actor2 name : \(obj.name) birthYear : \(obj.birthYear) filmography : \(obj.filmography)")
}
