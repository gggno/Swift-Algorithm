import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], k = input[1]
var arr = [0] + readLine()!.split(separator: " ").map { Int($0)! }

for i in 1...n {
    arr[i] += arr[i - 1]
}

var maxValue = Int.min

for i in 0...n - k {
    maxValue = max(maxValue, arr[i + k] - arr[i])
}

print(maxValue)