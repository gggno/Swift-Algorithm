import Foundation

let n = Int(readLine()!)!

var cnt = 0

var num = n

while num > 0 {
    
    if num % 5 == 0 {
        cnt += num / 5
        break
    } else if num >= 2 {
        cnt += 1
        num -= 2
    } else {
        cnt = -1
        break
    }
}

print(cnt)
