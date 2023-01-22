import Foundation

let n = Int(readLine()!)!

var num = n
var a = 0
var b = 0
var c = 0

while num > 0 {
    if (num / 300) > 0 {
        a += num / 300
        num -= (300 * (num / 300))
        continue
    } else if (num / 60) > 0 {
        b += num / 60
        num -= (60 * (num / 60))
        continue
    } else if (num / 10) > 0 {
        c += num / 10
        num -= (10 * (num / 10))
        continue
    } else {
        break
    }
}

if num == 0 {
    print(a, b, c)
} else {
    print(-1)
}
