import Foundation

var n = Int(readLine()!)!

var dp = Array(repeating: 0, count: n+1)

dp[0] = 1

if n > 0 {
    for i in 1..<n+1 {
        for j in 0..<i {
            dp[i] += dp[j] * dp[(i-1)-j]
        }
    }
}
print(dp[n])
