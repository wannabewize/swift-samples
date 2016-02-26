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
   func encodeWithCoder(aCoder: NSCoder) {
      aCoder.encodeObject(name, forKey: "Name")
      aCoder.encodeInteger(birthYear, forKey: "Year")
   }
   
   // 객체 프로퍼티 디코딩
   required init(coder aDecoder: NSCoder) {
      name = aDecoder.decodeObjectForKey("Name") as! String
      birthYear = aDecoder.decodeIntegerForKey("Year")
   }
}


// 저장
var obj = Person(name: "태연", birthYear: 1989)

// 파일로 아카이빙
let filePath = "/Users/wannabewize/Documents/data.dat"
let ret = NSKeyedArchiver.archiveRootObject(obj, toFile: filePath)

// 복원
if let obj = NSKeyedUnarchiver.unarchiveObjectWithFile(filePath) as? Person {
   print("name : \(obj.name) - birthYear : \(obj.birthYear)")
}


class Actor : Person {
   var filmography : [NSString]?
   override func encodeWithCoder(aCoder: NSCoder) {
      aCoder.encodeObject(filmography, forKey: "Filmography")
      super.encodeWithCoder(aCoder)
   }
   required init(coder aDecoder: NSCoder) {
      self.filmography = aDecoder.decodeObjectForKey("Filmography") as! [String]
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
let dataActor = NSKeyedArchiver.archivedDataWithRootObject(actor)

// 디코딩
if let obj = NSKeyedUnarchiver.unarchiveObjectWithData(dataActor) as? Actor {
   print("actor2 name : \(obj.name) birthYear : \(obj.birthYear) filmography : \(obj.filmography)")
}
