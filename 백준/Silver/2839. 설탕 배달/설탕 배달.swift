import Foundation

var n = Int(readLine()!)!
var cnt = 0

while n >= 3 {
    if n % 5 == 0 {
        n -= 5
        cnt += 1
    } else {
        n -= 3
        cnt += 1
    }
}

print(n == 0 ? cnt : -1)