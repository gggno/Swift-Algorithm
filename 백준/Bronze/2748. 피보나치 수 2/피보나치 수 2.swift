import Foundation

let input = Int(readLine()!)!

var dp: [Int] = Array(repeating: 0, count: input+1)

dp[0] = 0
dp[1] = 1

for i in 2..<input+1 {
    dp[i] = dp[i-1] + dp[i-2]
}

print(dp[input])
