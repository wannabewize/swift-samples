import Foundation

var marray = NSMutableArray()
marray.addObject(2)                    // 2
marray.insertObject("1", atIndex: 0)   // 1, 2
marray.addObjectsFromArray([3,4])      // 1,2,3,4
marray.removeObjectAtIndex(1)          // 1,3,4
