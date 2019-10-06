/*
 * 구조체 - Initializer
 */

struct Point {
    var x = 0
    var y = 0

    // Designated Initializer
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    
    // Convenience Initializer
    init() {
        self.init(x: 0, y: 0)
    }
}


var p1 = Point(x: 10, y: 10)
var p2 = Point()

print(p1)
print(p2)
