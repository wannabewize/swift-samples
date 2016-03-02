class Country {
   var name : String
   
   init(name : String) {
      self.name = name
   }
   
   deinit {
      print("Country 객체 헤제")
   }
}

class Capital {
   var name : String
   
   unowned var country : Country
   
   init(name : String, country : Country) {
      self.name = name
      self.country = country
   }
   
   deinit {
      print("City 객체 해제")
   }
}

var korea : Country! = Country(name: "Korea")
var seoul : Capital! = Capital(name: "Seoul", country: korea)

korea = nil
//print(seoul.country) // Error, Dangling Pointer
seoul = nil