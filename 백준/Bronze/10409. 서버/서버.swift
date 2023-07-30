import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let t = input[1]
let arr = readLine()!.split(separator: " ").map{Int($0)!}

var cnt = 0
var sum = 0

for i in arr {
    if sum + i <= t {
        sum += i
        cnt += 1
    } else {
        break
    }
}
print(cnt)