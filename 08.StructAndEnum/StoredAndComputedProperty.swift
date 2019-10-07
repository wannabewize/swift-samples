/*
 * Computed Property, Stored Property
 */
struct Time {
    var minute : Int {
        get {
            return Int(sec / 60)
        }
        set {
            sec = newValue * 60
        }
    }
    var sec: Int = 0
    init() {}
}


var t = Time()
t.minute = 10
print(t.sec)

let sec = t.minute
print(sec)
