import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

var a = input[0]
var b = input[1]

var cnt = 1

while a < b {
    if b % 2 == 0 {
        b /= 2
    } else if b % 10 == 1 {
        b /= 10
    } else {
        break
    }
    cnt += 1
}

if a == b {
    print(cnt)
} else {
    print(-1)
}