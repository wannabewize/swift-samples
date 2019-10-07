/*
 * 문자열 비교
 */

let str = "Hello Swift"
if str == "Hello Swift" {
    print("같은 문자열")
}

print("hasPrefix(Hello) :",str.hasPrefix("Hello"))
print("hasSuffix(ft) :", str.hasSuffix("ft"))

// 크기 비교
let str1 = "H"
let str2 = "h"

print("H < h :", str1 < str2)
