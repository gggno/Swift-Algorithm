import Foundation

var n = Int(readLine()!)!
var result = 0

while n >= 3 {
    if n % 5 == 0 {
        n -= 5
    } else {
        n -= 3
    }
    
    result += 1
}

print(n == 0 ? result : -1)