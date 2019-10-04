/*
* 리터럴(Literal)
*/

// 문자형 리터럴
let str1 = "a"
let str2 = "hello"
let str3 = "1"

print(str1)
print(str2)
print(str3)

// String Interpolation

let str4 = "1 + 2 = \(1+2)"

print(str4)

// """을 이용한 다열(Multiline) 문자열
// a/nb
let str5 = """
           a
           b
           """

print(str5)

// a/n b
let str6 = """
           a
            b
           """

print(str6)

// 에러
/*
let str7 = """
           a
           b
            """
 print(str7)
 */

// Error. 다열 문자열(""")을 한줄에 작성하면 에러
/*
let str8 = """ abc """
print(str8)
*/