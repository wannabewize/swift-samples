struct ChangeCounter {
    var count: Int = 0
    var value: Int = 0 {
        didSet {
            count += 1
        }
    }
    init() {}
}

var counter = ChangeCounter()

counter.value = 10
counter.value = 20

print(counter.count) // 2

counter.value = 30

print(counter.count) // 3
