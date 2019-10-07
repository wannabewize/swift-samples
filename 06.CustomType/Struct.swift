/*
 * Struct 정의와 객체 생성
 */

struct Movie {
    var title : String
    var year : Int
}

let avata = Movie(title: "아바타", year: 2009)
print(avata.title)

var avengers = Movie(title: "어밴져스", year: 0)
avengers.year = 2012

print(avengers.title)

var movies: [Movie] = []

movies.append(avata)
movies.append(avengers)


struct Song {
    var title: String
    var artist: String
    var image: String?
}


let song = Song(title: "좋은날", artist: "IU", image: nil)

struct Book {
    var title: String
    var sales = 0
}


struct Bird {
    var name: String
    static let species = "새"
}

print(Bird.species)



