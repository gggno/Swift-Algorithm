import Foundation

let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{Int($0)!}

var minValue = input[0]
var dp: [Int] = Array(repeating: 0, count: n)

for i in 1..<n {
    minValue = min(minValue, input[i])
    dp[i] = max(input[i] - minValue, dp[i-1])
}

for i in dp {
    print(i, terminator: " ")
}
print("")
