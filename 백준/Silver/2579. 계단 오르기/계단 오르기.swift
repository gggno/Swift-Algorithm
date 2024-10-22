import Foundation

let n = Int(readLine()!)!
var stairs: [Int] = [0]

for _ in 0..<n {
    stairs.append(Int(readLine()!)!)
}

var cache = [Int](repeating: 0, count: n + 1)

if n == 1 {
    print(stairs[1])
} else if n == 2 {
    print(stairs[1] + stairs[2])
    
} else {
    cache[1] = stairs[1]
    cache[2] = stairs[1] + stairs[2]
    
    for i in 3...n {
        cache[i] = max(cache[i-3] + stairs[i-1], cache[i-2]) + stairs[i]
    }
    
    print(cache.last!)
}