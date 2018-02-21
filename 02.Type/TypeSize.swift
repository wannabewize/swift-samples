/*
 * 타입 크기
 * 타입 크기 : MemoryLayout<T>.size
 * https://github.com/apple/swift-evolution/blob/master/proposals/0101-standardizing-sizeof-naming.md
 */

print("Bool size   : ", MemoryLayout<Bool>.size)

print("Int size   : ", MemoryLayout<Int>.size)
print("Int8 size  : ", MemoryLayout<Int8>.size)
print("UInt8 size : ", MemoryLayout<UInt8>.size)
print("int16 size : ", MemoryLayout<Int16>.size);
print("int32 size : ", MemoryLayout<Int32>.size);
print("int64 size : ", MemoryLayout<Int64>.size);

print("Float size   : ", MemoryLayout<Float>.size)
print("Double size   : ", MemoryLayout<Double>.size)
