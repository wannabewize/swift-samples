import Foundation

var mStr1 = NSMutableString(string: "Hello")
var mStr2 = mStr1

mStr1.append(" Foundation")

print(mStr1)	 // Hello Foundation
print(mStr2) // Hello Foundation


var str1 = "Hello Swift"
var str2 = str1

let ch : Character = "!"
str1.append(ch)

print(str1) // Hello Swift!
print(str2) // Hello Swift

