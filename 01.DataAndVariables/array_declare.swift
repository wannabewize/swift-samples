var intArray : [Int] = [1, 2, 3, 4, 5]
let strArray = ["A", "B", "C"]
let floatArray = Array<Float>([1.1, 2.2, 3.3])

var emptyArray = [Int]()
var emptyArray2 = Array<Double>()
var emtpyArray3 : [String] = []


print("intArray : ",intArray)
print("count : ", intArray.count)
print("isEmpty : ",emptyArray.isEmpty)


let element1 = intArray[0] // 1
let element2 = floatArray[1] // 2.2
//let element3 = strArray[3] // Error