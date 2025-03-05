import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let n = input[0], k = input[1]

let arr = readLine()!.split(separator: " ").map{ Int($0)! }
var maxValue = Int.min

for i in 0..<n-k+1 {
    var cnt = 0
    for j in i..<i+k {
        cnt += arr[j]
    }
    maxValue = max(maxValue, cnt)
}

print(maxValue)