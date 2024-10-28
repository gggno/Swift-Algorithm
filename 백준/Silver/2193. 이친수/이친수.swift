import Foundation

let n = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 2), count: n+1)

if n == 1 {
    print(1)
} else {
    dp[2][0] = 1
    dp[2][1] = 0
    
    for i in 3..<n+1 {
        dp[i][0] = dp[i-1][0] + dp[i-1][1]
        dp[i][1] = dp[i-1][0]
    }
    
    print(dp[n][0] + dp[n][1])
}