/**
 * nil 병합 연산지
 */

var userSelectedColor : String?
// nil 이면 Red를 사용
var colorName: String = userSelectedColor ?? "Red"

print(colorName) // "Red
