import Foundation

var marray = NSMutableArray()

marray.add(2)                    // 2
marray.insert("1", at: 0)   // 1, 2
marray.addObjects(from: [3,4])      // 1,2,3,4
marray.removeObject(at: 1)          // 1,3,4
