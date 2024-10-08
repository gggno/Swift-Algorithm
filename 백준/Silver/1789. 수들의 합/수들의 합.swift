import Foundation

var s = Int(readLine()!)!

var num = 0
var n = 0

for i in 1...s {
    num += i
    n += 1
    
    if num > s {
        n -= 1
        break
    }
}

print(n)