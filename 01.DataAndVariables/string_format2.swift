// 포맷 문자열
let intStr = String(format:"%03d", 12)
print("Formatted String(03d) : ", intStr)

let floatStr1 = String(format: "%3.2f", floatVal)
let floatStr2 = String(format: "%3.2e", floatVal)
print("Formatted String(3.2f) : ", floatStr1)
print("Formatted String(3.2e) : ", floatStr2)