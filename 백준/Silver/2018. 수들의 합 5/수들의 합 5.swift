import Foundation

let n = Int(readLine()!)!
var result = 0

for i in 1...n {
    var sum = 0
    var cnt = i
    
    while true {
        if sum == n {
            result += 1
            break
        } else if sum > n {
            break
        }
        sum += cnt
        cnt += 1
    }
}

print(result)