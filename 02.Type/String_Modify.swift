/*
 * 문자열 덧붙이기 : +, append
 */

var str = "Hello"
str = str + " Swift"
str += "!"
print(str)

var str2 = "Hello"
str2.append(" Swift")
print(str2)

let exclaim  : Character = "!"
str2.append(exclaim)
print(str2)

/*
 * 대소문자 변경: uppercased, lowercased
 * 변경된 문자열이 새로 생성됨
 */
let uppercaseStr = str.uppercased()
let lowercaseStr = str.lowercased()
print(uppercaseStr, lowercaseStr)


/*
 * 특정 위치에 문자 삽입 : insert()
 */
var helloStr = "Hello Wld"
// 인덱스 구하기. endIndex에서 앞으로 이동
let index8 = helloStr.index(helloStr.endIndex, offsetBy: -2)
helloStr.insert(contentsOf: ["o", "r"], at: index8)
//helloStr.insert(contentsOf:"or".characters, at: index8) // Hello World
print("Insert Characters :", helloStr)

/*
 * 특정 위치의 문자 삭제 : remove()
 */
var helloStr2 = "Hello, World!"
// "Hello, World"
helloStr2.remove(at: helloStr2.index(before: helloStr2.endIndex) )
print("Remove Last Character :",helloStr2)


/*
 * 특정 범위내 문자열 삭제 : removeSubrange()
 */
let range = helloStr2.index(helloStr2.startIndex, offsetBy:5)...
// "Hello"
helloStr2.removeSubrange(range)
print("Remove range : ",helloStr2)


/*
 * 문자열을 분리 : split()
 */
let commaStr = "123,456,789"
let splited = commaStr.split(separator: ",")
print("Splited by comma :", splited)

/*
 * 문자열 범위 교환 : replace()
 */
var replaceStr = "Hello iOS!"
let replaceRangeStart = replaceStr.index(replaceStr.startIndex, offsetBy: 6)
let replaceRangeEnd = replaceStr.index(replaceStr.endIndex, offsetBy: -2)

replaceStr.replaceSubrange( replaceRangeStart...replaceRangeEnd, with: "Swift")
print("replaced string :", replaceStr) // Hello Swift!
