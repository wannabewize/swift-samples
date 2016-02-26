import Foundation


var mStr : NSMutableString = NSMutableString(string: "가나다")
mStr.appendString("라") // 가나다라
mStr.deleteCharactersInRange(NSMakeRange(0, 2)) // 다라
mStr.insertString("가져", atIndex: 1) // 다가져라
