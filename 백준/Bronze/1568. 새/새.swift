import Foundation

var n = Int(readLine()!)!
var cnt = 1
var second = 0

while n > 0 {
    if n >= cnt {
        n -= cnt
        second += 1
        cnt += 1
    } else {
        cnt = 1
    }
    
}
print(second)
