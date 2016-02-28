class Country {
   var name : String
   // unowned
   unowned var capital : City
   
   init(name : String, capital : City) {
      self.name = name
      self.capital = capital
   }
   
   deinit {
      print("Country 객체 헤제")
   }
}

class City {
   var name : String
   
   init(name : String) {
      self.name = name
   }
   
   deinit {
      print("City 객체 해제")
   }
}


var seoul : City! = City(name: "Seoul")
var korea : Country! = Country(name: "Korea", capital: seoul)

seoul = nil
//print(korea.capital) // 에러. korea.capital은 dangling pointer
korea = nil