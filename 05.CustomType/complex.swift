class Music {
    var title: String?
    var artist: String?
}

class Theater {
    var name: String?
    var location: String?
}

enum Genre {
    case sf, drama, action, other
}

struct Movie {
    var title: String
    var ost: Music
    var theaters: [Theater]
    var genre: Genre
}