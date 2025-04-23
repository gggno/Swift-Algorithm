import Foundation

var arr: Set<Int> = []

for _ in 0..<10 {
    arr.insert(Int(readLine()!)! % 42)
}

print(arr.count)