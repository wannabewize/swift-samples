import Foundation


var mStr : NSMutableString = NSMutableString(string: "가나다")
mStr.append("라") // 가나다라
mStr.deleteCharacters(in: NSMakeRange(0, 2)) // 다라
mStr.insert("가져", at: 1) // 다가져라
