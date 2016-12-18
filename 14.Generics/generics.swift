/*
 * 제네릭스를 사용하는 배열과 딕셔너리
 */

var array1 = Array<Int>()

array1.append(1)
print(array1)

array1.remove(at: 0)
print(array1)


var array2 = Array<String>()

array2.append("a")
array2.append("b")


var dictionary = Dictionary<String, Int>()

dictionary.updateValue(1, forKey: "ONE")
print(dictionary)
dictionary.removeValue(forKey: "ONE")
print(dictionary)