var array1 : [Int] = [1, 2, 3]
var array2 = array1

if array1 == array2 {
   print("같은 값의 원소 배열")
}

array1.append(4)

array1 // [1, 2, 3, 4]
array2 // [1, 2, 3]