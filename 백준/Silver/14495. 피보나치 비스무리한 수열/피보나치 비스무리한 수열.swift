import Foundation

var n = Int(readLine()!)!

var dp = Array(repeating: 0, count: n+1)

dp[0] = 1
if n > 1 {
    dp[1] = 1
}
if n > 2 {
    dp[2] = 1
}

if n > 3 {
    for i in 3..<n {
        dp[i] = dp[i-1] + dp[i-3]
    }
}
print(dp[n-1])
