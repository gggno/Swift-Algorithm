import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int($0)!}

var dp = Array(repeating: 10_000, count: n+1)
dp[0] = 0

for i in 1...n {
    for j in 1...i {
        dp[i] = min(dp[i], dp[i-j] + arr[j-1])
    }
}

print(dp[n])